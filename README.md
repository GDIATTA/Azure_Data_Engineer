### -------------------------------- Azure_Data_Engineer ---------------------------------------- :

#### Chapter1 : --------------------------- Azure Synapse Analytics -------------------------

**What is Azure Synapse Analytics?** <br>

**Azure Synapse** is an enterprise analytics service that accelerates time to insight across **data warehouses and big data systems**. **Azure Synapse** brings together the best of **SQL** technologies used in enterprise **data warehousing**, **Spark** technologies used for **big data, Data Explorer for log and time series analytics**, **Pipelines** for **data integration** and **ETL/ELT**, and deep integration with other Azure services such as **Power BI, CosmosDB, and AzureML**.<br>

**-------------- Creating a Synapse Workspace -------------------:** <br>
In this tutorial, you'll learn how to create a Synapse workspace, a dedicated SQL pool, and a serverless Apache Spark pool. <br>

**Prerequisites**: <br>
To complete this tutorial's steps, you need to have access to a resource group for which you're assigned the Owner role. Create the Synapse workspace in this resource group. <br>

**Create a Synapse workspace in the Azure portal**  <br>
Start the process <br>
1. Open the Azure portal, in the search bar enter Synapse without hitting enter. <br>
2. In the search results, under Services, select Azure Synapse Analytics. <br>
3. Select Create to create a workspace. <br>

![Capture d’écran 2024-08-14 010950](https://github.com/user-attachments/assets/0c6fc256-c205-45eb-aac5-8ee7e9374df8)

4. Once a new window opening, as follow: <br>
> In Project Details, fill in following fields: <br>
>> For Subscription - Pick any subscription. <br>
>> For Resource group - Use any resource group. <br>
>> For Managed Resource group - Leave this blank. <br>
> In Workspace details, fill in the following fields: <br>
>> Workspace name - Pick any globally unique name. In this tutorial, we'll use myworkspace. <br>
>>  Region - Pick the region where you have placed your client applications/services (for example, Azure Virtual Machine, Power BI, Azure Analysis Service) and storages that contain data (for example Azure Data Lake storage, Azure Cosmos DB analytical storage). <br>
>> Under Select Data Lake Storage Gen : <br>
>>> By Account name, select Create New and name the new storage account contosolake or similar as the name must be unique. <br>
>>> By File system name, select Create New and name it users. This will create a storage container called users. The workspace will use this storage account as the "primary" storage account to Spark tables and Spark application logs. <br> 
>>> Check the "Assign myself the Storage Blob Data Contributor role on the Data Lake Storage Gen2 account" box. <br>

![Capture d’écran 2024-08-14 011752](https://github.com/user-attachments/assets/bf504b18-82c7-40f8-bb4f-4896e102deb1)

> Completing the process and then Select Review + create > Create. Your workspace is ready in a few minutes.<br>

![Capture d’écran 2024-08-14 011821](https://github.com/user-attachments/assets/6d72a890-3045-4a68-9493-3e1a5714181f)
![Capture d’écran 2024-08-14 012045](https://github.com/user-attachments/assets/9739be7a-b7c3-44e7-ac56-397178ee33cf)
![Capture d’écran 2024-08-14 012539](https://github.com/user-attachments/assets/716384ee-5800-4b6e-802c-0daab0ed3885)
![Capture d’écran 2024-08-14 012633](https://github.com/user-attachments/assets/d55cf66f-19e3-4ba3-b283-85a6910fb9c0)
