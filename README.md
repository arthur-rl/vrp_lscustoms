# vrp_lscustoms
**Credits:** MythicalBro and マーモット#2533 (me)

**Original version:** https://forum.fivem.net/t/los-santos-customs-bennys-motorworks-v1-2/52044

**Screenshots:**

   ![Screenshot](https://i.imgur.com/jOh7fAb.png)

**How to install:**

   - Put the folder **vrp_lscustoms** inside your resources folder and start it in your server.cfg. Then go to the resources folder and select the resources that you want to use and follow the paths to replace the archives in your resources folder!
   - If your old los santos customs was saving the modifications on a column named **upgrades** and the data was like quote below, you can start only one time the  **vrp_upgrades_to_modifications** resource that will remove the upgrades column and pass the formatted data for the modifications column, without losing your old modifications.
   ```json
       147,11:11,156:255,0,255:false:255,255,255:1:1:0:false:0,0,false;1,2,false;2,0,false;3,1,false;4,1,false;5,-1,false;6,-1,false;7,0,false;8,-1,false;9,-1,false;10,0,false;11,2,false;12,2,false;13,2,false;14,-1,false;15,3,false;16,4,false;17,-1,false;18,-1,true;19,-1,false;20,-1,false;21,-1,false;22,-1,true;23,-1,false;24,-1,false;25,-1,false;26,-1,false;27,-1,false;28,-1,false;29,-1,false;30,-1,false;31,-1,false;32,-1,false;33,-1,false;34,-1,false;35,-1,false;36,-1,false;37,-1,false;38,-1,false;39,-1,false;40,-1,false;41,-1,false;42,-1,false;43,-1,false;44,-1,false;45,-1,false;46,-1,false;47,-1,false;48,-1,false
   ```  
       
**How to use in other resources:**

   - To install it in other resources you need to add the code below in the resource spawn vehicle function that you want to use:
   ```lua
       TriggerServerEvent("LSC:applyModifications", model, entity)
   ```
   - **Model:** Vehicle model name that is going to be searched on the database.
   - **Entity:** Vehicle entity.   
    

# vrp_lscustoms (PT-BR)

**Créditos:** MythicalBro e マーモット#2533 (eu)

**Como instalar:**
    
   - Coloque a pasta **vrp_lscustoms** dentro de sua pasta resources e starte ela no server.cfg. Depois vá na pasta resources e selecione os resources que você quer usar e siga os diretórios para substituir os arquivos na sua pasta resources!
   - Se sua los santos customs antiga estava salvando as modificações em um coluna chamada **upgrades** e os dados eram parecidos com a citação abaixo, você pode startar apenas uma o vez o resource **vrp_upgrades_to_modifications** que irá remover a coluna upgrades e passar os dados formatdos para a coluna modifications, sem perder suas modificações antigas. 
   ```json
       147,11:11,156:255,0,255:false:255,255,255:1:1:0:false:0,0,false;1,2,false;2,0,false;3,1,false;4,1,false;5,-1,false;6,-1,false;7,0,false;8,-1,false;9,-1,false;10,0,false;11,2,false;12,2,false;13,2,false;14,-1,false;15,3,false;16,4,false;17,-1,false;18,-1,true;19,-1,false;20,-1,false;21,-1,false;22,-1,true;23,-1,false;24,-1,false;25,-1,false;26,-1,false;27,-1,false;28,-1,false;29,-1,false;30,-1,false;31,-1,false;32,-1,false;33,-1,false;34,-1,false;35,-1,false;36,-1,false;37,-1,false;38,-1,false;39,-1,false;40,-1,false;41,-1,false;42,-1,false;43,-1,false;44,-1,false;45,-1,false;46,-1,false;47,-1,false;48,-1,false
   ```

**Como usar em outros resources:**

   - Para instalar em outros resources você precisa adicionar o código abaixo na funcão de spawnar o veículo do resource que você quer usar:
   ```lua
       TriggerServerEvent("LSC:applyModifications", modelo, entitidade)
   ```
   - **Modelo:** Nome do modelo do veículo que irá ser pesquisado na database.
   - **Entidade:** Entidade do veículo.


    
    