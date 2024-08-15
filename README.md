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

**Open Synapse Studio** <br>
After your Azure Synapse workspace is created, you have two ways to open Synapse Studio:
1. Open your Synapse workspace in the Azure portal, in the Overview section of the Synapse workspace, select Open in the Open Synapse Studio box.  <br>
2. Go to the https://web.azuresynapse.net and sign in to your workspace.  <br>

![Capture d’écran 2024-08-14 013004](https://github.com/user-attachments/assets/c9cc6749-11db-4612-a399-8d37c97b848f)
![Capture d’écran 2024-08-14 014108](https://github.com/user-attachments/assets/104a3222-8be7-4210-b721-ad864e2d98a2)

In my storage, there is a **Data Lake Storage** created after my **Synapse workspace is ready**.

![Capture d’écran 2024-08-14 014729](https://github.com/user-attachments/assets/a5a563cc-6601-4c25-824a-2c93b05c1699)

**-------------------- How to create an external table based on a **Data Lake** ? --------------------** <br>
There a two ways to create an external table based on **Data Lake** :<br>
1. Select **Data hub**, then choose **Workspace** and select **New table**, you will find a new window opening on the right :<br>
> **In External table Details**, fill in the following fields : <br>
>> For **External table name**, give any name. <br>
>> For **Linked Service**, choose your **Data Lake Storage**. <br>
>> For **Input file or folder**, select the file/folder to upload. <br>

![Capture d’écran 2024-08-14 015251](https://github.com/user-attachments/assets/c32d0b4e-4b1f-49e9-b8e2-abe3661ffeb3)

> Complete the process and then select **Create**. <br>

![Capture d’écran 2024-08-14 015437](https://github.com/user-attachments/assets/ff7ef6fb-4e25-4e9a-8716-fcf0ce7accbe)
![Capture d’écran 2024-08-14 015525](https://github.com/user-attachments/assets/6c068722-3d8d-4dc1-a7f6-35d22e16a4a7)
![Capture d’écran 2024-08-14 015648](https://github.com/user-attachments/assets/e524d828-34ee-4806-8336-1b59bb638716)
![Capture d’écran 2024-08-14 020241](https://github.com/user-attachments/assets/66a9661a-c935-46de-95cf-3200afaf4c78)
![Capture d’écran 2024-08-14 020349](https://github.com/user-attachments/assets/1821c55c-a406-47ab-ad6e-51e2d672c975)

2. To check the data is imported well into this table, you need to create a SQL script. <br>

![Capture d’écran 2024-08-14 020810](https://github.com/user-attachments/assets/ba566d5d-3635-4eed-ae68-852e80bb71fd)
![Capture d’écran 2024-08-14 020856](https://github.com/user-attachments/assets/95b3a6ef-d68e-4490-8bcf-dd96f21f9fa7)
![Capture d’écran 2024-08-14 021132](https://github.com/user-attachments/assets/9e5f87ff-758f-4247-843d-e3a4d1d0ec0e)


