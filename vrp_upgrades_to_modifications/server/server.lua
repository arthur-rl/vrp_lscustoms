--[[
Credits - マーモット#2533
/////License/////
Do not reupload/re release any part of this script without my permission
]]

local MySQL = module("vrp_mysql", "MySQL")

MySQL.createCommand("vRP/get_all_users_vehicles", "select * from vrp_user_vehicles")
MySQL.createCommand("vRP/drop_upgrades_column", "alter table vrp_user_vehicles drop column upgrades")

MySQL.query("vRP/get_all_users_vehicles", {}, function (rows, affected)
    if #rows > 0 then
        for _, row in pairs(rows) do
            local upgrades = row.upgrades
            if upgrades and json.encode(upgrades) ~= "[]" then
                upgrades = splitString(upgrades, ":")

                for k, v in pairs(upgrades) do
                    if (k ~= 10) then
                        v = splitString(v, ",")
                        if #v > 1 then
                            for x, y in pairs(v) do
                                v[x] = tonumber(y)
                            end
                        else
                            v = tonumber(v[1]) or toboolean(v[1])
                        end
                        upgrades[k] = v
                    end
                end

                local modifications = {color = upgrades[1], extraColor = upgrades[2], neon = upgrades[4], neonColor = upgrades[3], xenonColor = -1, smokeColor = upgrades[5], wheelType = upgrades[8], bulletProofTyres = upgrades[9], windowTint = upgrades[7], plateIndex = upgrades[6], mods = {}}

                for k, v in pairs(splitString(upgrades[10], ";")) do
                    v = splitString(v, ",")
                    v[1] = tonumber(v[1])
                    v[2] = tonumber(v[2])
                    v[3] = toboolean(v[3])
                    if v[1] == 18 or v[1] == 22 then
                        if v[3] then
                            modifications.mods[v[1]] = {mod = 1}
                        else
                            modifications.mods[v[1]] = {mod = 0}
                        end
                    elseif v[1] == 23 or v[1] == 24 then
                        modifications.mods[v[1]] = {mod = v[2], variation = v[3]}
                    else
                        modifications.mods[v[1]] = {mod = v[2]}
                    end
                end

                MySQL.execute("vRP/update_vehicle_modifications", {user_id = row.user_id, vehicle = row.vehicle, modifications = json.encode(modifications)})
            end
        end
        MySQL.execute("vRP/drop_upgrades_column")
    end
end)

function toboolean(value)
    if (value) == "true" then
        return true
    end
    return false
end
