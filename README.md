# vrp_lscustoms
**Credits:** MythicalBro and マーモット#2533 (me)

**Original version:** https://forum.fivem.net/t/los-santos-customs-bennys-motorworks-v1-2/52044

**Screenshots:**

   ![Screenshot](https://i.imgur.com/jOh7fAb.png)

**How to install:**

   - Put the folder **vrp_lscustoms** inside your resources folder and start it in your server.cfg. Then go to this resources folder and select the resources that you want to use and follow the paths to replace the archives in your resources folder!
   - If you gonna use the **vrp_advanced_garages**, you need to change **LSC_Config.vrp_adv_garages** to **true** on the **vrp_lscustoms/lsconfig.lua** archive! 


   ```lua
       LSC_Config.vrp_adv_garages = true
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
   - Se você vai usar o **vrp_advanced_garages**, você precisa mudar **LSC_Config.vrp_adv_garages** para **true** no arquivo **vrp_lscustoms/lsconfig.lua**!
   ```lua
       LSC_Config.vrp_adv_garages = true
   ```
      
**Como usar em outros resources:**

   - Para instalar em outros resources você precisa adicionar o código abaixo na funcão de spawnar o veículo do resource que você quer usar:
   ```lua
       TriggerServerEvent("LSC:applyModifications", modelo, entitidade)
   ```
   - **Modelo:** Nome do modelo do veículo que irá ser pesquisado na database.
   - **Entidade:** Entidade do veículo.


    
    