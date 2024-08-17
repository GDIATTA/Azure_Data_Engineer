### -------------------------------- Azure_Data_Engineer ---------------------------------------- :

#### Chapter1 : -------------------------------- Azure Synapse Analytics ---------------------------------

**What is Azure Synapse Analytics?** <br>

**Azure Synapse** is an enterprise analytics service that accelerates time to insight across **data warehouses and big data systems**. **Azure Synapse** brings together the best of **SQL** technologies used in enterprise **data warehousing**, **Spark** technologies used for **big data, Data Explorer for log and time series analytics**, **Pipelines** for **data integration** and **ETL/ELT**, and deep integration with other Azure services such as **Power BI, CosmosDB, and AzureML**.<br>

**------------------------ Creating a Synapse Workspace ------------------------:** <br>
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

2. To check the data has been successfully imported into this table, you need to create a SQL script. <br>

![Capture d’écran 2024-08-14 020810](https://github.com/user-attachments/assets/ba566d5d-3635-4eed-ae68-852e80bb71fd)
![Capture d’écran 2024-08-14 020856](https://github.com/user-attachments/assets/95b3a6ef-d68e-4490-8bcf-dd96f21f9fa7)
![Capture d’écran 2024-08-14 021132](https://github.com/user-attachments/assets/9e5f87ff-758f-4247-843d-e3a4d1d0ec0e)

2. Select **Data hub**, then choose **Linked** : <br>
> click on the workspace to display the file to be imported <br>
> Select **Manage Hub** to create an **Apache Spark Pool** <br>
>> Select **Apache Spark pools** <br>
>> Select **New Pool Apache Spark** <br>

![Capture d’écran 2024-08-14 032639](https://github.com/user-attachments/assets/4c209bc3-a781-4350-ba79-d9c1c0cf4c35)

>> For **New pool Apache Spark**, fill in the following fileds: <br>

>>> In Details of Apache Spark pool, enter a name of your choice for the **Apache Spark pool**. Then select the noeud size and set the number of noeuds to 3. <br>

![Capture d’écran 2024-08-14 032822](https://github.com/user-attachments/assets/17a6fc06-5e0a-46ab-bc51-a8337ad64d8e)

>>> Leave the remaining settings as default, then click on **View and Create** and choose **Create** <br>

![Capture d’écran 2024-08-14 032952](https://github.com/user-attachments/assets/4158c49d-433f-46c5-bca1-a528f73944d8)
![Capture d’écran 2024-08-14 033027](https://github.com/user-attachments/assets/046b810b-f0d3-4971-bd82-91489b9a243e)
![Capture d’écran 2024-08-14 033136](https://github.com/user-attachments/assets/a99e51eb-9047-4605-8f57-24c88182bd5e)

> Return on the file to be imported, then click to select the **Associated Notebook**. <br>

![Capture d’écran 2024-08-14 033222](https://github.com/user-attachments/assets/d72d72e2-619a-4d14-b34c-3622372e3c73)

> After opening the notebook, you can proceed by editing a Spark code to create a **table** <br>

![Capture d’écran 2024-08-14 161259](https://github.com/user-attachments/assets/3b304f36-65ea-4332-88e8-82184012897e)

**Develop Hub** contains all SQL Script and Notebooks that have been created. <br>

![Capture d’écran 2024-08-14 171559](https://github.com/user-attachments/assets/1fccbcca-1b62-40ad-85cf-8969679f4a76)

**Monitor Hub** enables you to track the execution process of pipelines. <br>

#### Chapter2 : -------------------------------- Pipeline and data flow ---------------------------------:
In Azure Synapse Analytics, we can build a pipeline to ingest, transform, model, and analyze your data. <br>
In this tutorial, we will load data from Azure SQL Database into Azure Synapse Analytics. <br>

**------------------------ 1. Create a single database -----------------------**
This tutorial allow to create a single database in the serverless compute tier. <br>
Get Started :<br>
To create a single database in the Azure portal : <br>
1. Browser to SQL Databases page <br>
2. Choose **create SLQ Database** <br>
![Capture d’écran 2024-08-16 023522](https://github.com/user-attachments/assets/27ed0d14-8453-44d1-be10-260f99c11434)

3. On the Basics tab of the Create SQL Database form, under Project details, select the desired **Azure Subscription**. <br>
4. For Resource group, select Create new, enter **GroupResource2**, and select OK. <br>
5. For Database name, enter **mySampleDatabase** <br>

![Capture d’écran 2024-08-16 025301](https://github.com/user-attachments/assets/b0a0ff95-cd51-496b-8f44-e08d322d1fda)

For Server, select Create new, and fill out the New server form with the following values: <br>
6. Server name: Enter mysqlserver, and add some characters for uniqueness. We can't provide an exact server name to use because server names must be globally unique for all servers in Azure, not just unique within a subscription. So enter something like **mysqlserver1234567**, and the portal lets you know if it's available or not. <br>
**Location**: Select a location from the dropdown list. <br>
**Authentication method**: Select **Use SQL authentication**. <br>
**Server admin logi**n: Enter **azureuser**. <br>
**Password**: Enter a password that meets requirements, and enter it again in the Confirm password field. <br>
Select **Ok**

![Capture d’écran 2024-08-16 024556](https://github.com/user-attachments/assets/7c5bdfd3-d2a5-45d2-9059-2367ce69508a)

7. Under Compute + storage, select Configure database. <br>

![Capture d’écran 2024-08-16 025326](https://github.com/user-attachments/assets/14b7653c-6497-4f9c-b2d5-103e9b1c39ec)
![Capture d’écran 2024-08-16 024936](https://github.com/user-attachments/assets/9c92d009-e279-4178-a226-f724e99e49c5)

8. On the Networking tab, for Connectivity method, select Public endpoint. <br>
9. For Firewall rules, set Add current client IP address to Yes. Leave Allow Azure services and resources to access this server set to No. <br>

![Capture d’écran 2024-08-16 025607](https://github.com/user-attachments/assets/8d9f5c33-c468-4c33-be1a-b115d4cffcb8)

10. Under Connection policy, choose the Default connection policy, and leave the Minimum TLS version at the default of TLS 1.2.<br>

![Capture d’écran 2024-08-16 025705](https://github.com/user-attachments/assets/4d179363-f6af-4eee-8fd1-092bcbbbbd72)

11. On the Security page, you can choose to start a free trial of Microsoft Defender for SQL, as well as configure Ledger, Managed identities and Transparent data encryption (TDE) if you desire. Select Next: Additional settings at the bottom of the page.<br>
12. On the Additional settings tab, in the Data source section, for Use existing data, select Sample. This creates an AdventureWorksLT sample database so there's some tables and data to query and experiment with, as opposed to an empty blank database. You can also configure database collation and a maintenance window.<br>
13. On the Review + create page, after reviewing, select Create.<br>

![Capture d’écran 2024-08-16 030141](https://github.com/user-attachments/assets/951dc48c-d156-4c07-a49c-c7be34543ac0)
![Capture d’écran 2024-08-16 030242](https://github.com/user-attachments/assets/1735c281-38fc-4dd7-b5d0-f2c6b459e983)
![Capture d’écran 2024-08-16 030533](https://github.com/user-attachments/assets/c3235c52-5171-4f7c-92b2-1673a76b5498)

**-------------------------- 1.2. Query the database ------------------------:**

1. In the portal, search for and select SQL databases, and then select your database from the list.<br>
2. On the page for your database, select Query editor (preview) in the left menu.<br>

![Capture d’écran 2024-08-16 030759](https://github.com/user-attachments/assets/b0fc1954-f638-4e75-96c5-ef7af5f02174)

3. Enter your SQL authentication server admin login information or use Microsoft Entra authentication.<br>

![Capture d’écran 2024-08-16 031058](https://github.com/user-attachments/assets/8e936dab-6d58-4c02-96b2-b43ca2f79803)

4. Enter the following query in the Query editor pane.<br>

![Capture d’écran 2024-08-16 031214](https://github.com/user-attachments/assets/3f7c77a7-6411-4024-89fd-6b0284fce430)

5. Select Run, and then review the query results in the Results pane.<br>

![Capture d’écran 2024-08-16 031450](https://github.com/user-attachments/assets/3860d77f-a1d3-4357-990e-e085acb736db)


**---------- 1.3. Use Visual Studio Code to connect and query Azure SQL Database or Azure SQL Managed Instance ----------:** <br>
**------ 1.3.1 Configure Visual Studio Code -------** <br>
In Windows <br>
Load the **mssql** extension by following these steps: <br>
1.Open Visual Studio Code. <br>
2.Open the Extensions pane (or Ctrl + Shift + X). <br>
3.Search for sql and then install the **SQL Server (mssql) extension**. <br>

![Capture d’écran 2024-08-16 032626](https://github.com/user-attachments/assets/a0e18c63-8da0-4766-9042-d369d22370fa)

**---- 1.3.2 Get server connection information ----**
Get the connection information you need to connect to Azure SQL Database. You need the fully qualified server name or host name, database name, and login information for the upcoming procedures. <br> 
1. Sign in to the Azure portal. <br>
2. Navigate to the SQL databases or SQL Managed Instances page. <br>
3. On the Overview page, review the fully qualified server name next to Server name for SQL Database or the fully qualified server name next to Host for a SQL Managed Instance. To copy the server name or host name, hover over it and select the Copy icon. <br>
**mysqlserver1234567.database.windows.net** <br>

![Capture d’écran 2024-08-16 033111](https://github.com/user-attachments/assets/1ce1efc7-a099-4a3d-a09b-0cf2d712e823)

**---- 1.3.3 Set language mode to SQL -----** <br>
In Visual Studio Code, set the language mode to SQL to enable mssql commands and T-SQL IntelliSense. <br>
1. Open a new Visual Studio Code window. <br>
2. Press **Ctrl + N**. A new plain text file opens. <br>
3. Select Plain Text in the status bar's lower right-hand corner. <br>
4. In the Select **language** mode dropdown list that opens, select **SQL**. <br>

**---- 1.3.4 Connect to your database ----**: <br>
Use Visual Studio Code to establish a connection to your server. <br>
 **Important:** <br>
Before continuing, make sure that you have your server and sign-in information ready. Once you begin entering the connection profile information, if you change your focus from Visual Studio Code, you have to restart creating the profile. <br>

1. In Visual Studio Code, press **Ctrl + Shift + P** (or F1) to open the **Command Palette**. <br>
2. Type connect and then choose **MS SQL:Connect**. <br>
3. Select + **Create Connection Profile**. <br>
4. Follow the prompts to specify the new profile's connection properties. After specifying each value, press Enter to continue. <br>

![Capture d’écran 2024-08-16 141132](https://github.com/user-attachments/assets/2c0cd321-db60-4608-a323-a20f1896d137)
![Capture d’écran 2024-08-16 141442](https://github.com/user-attachments/assets/3721eb50-24b8-4755-ac8c-d0fff124828d)

**---- 2. Create a dedicated SQL pool using the Azure portal ----**: <br>
We will create a dedicated SQL pool in a Synapse workspace by using the Azure portal. <br>
1. Navigate to the Synapse workspace where the dedicated SQL pool will be created by typing the service name (or resource name directly) into the search bar. <br>
2. From the list of workspaces, type the name (or part of the name) of the workspace to open. For this example, we'll use a workspace named **gaussworkspace1**. <br>
**----- 2.1 Create new dedicated SQL pool -----**: <br>
1. In the Synapse workspace where you want to create the dedicated SQL pool, select **New dedicated SQL pool** command in the top bar. <br>

![Capture d’écran 2024-08-16 145909](https://github.com/user-attachments/assets/9257d0fb-bfdf-4ef3-abce-4865e38f614b)

2. Enter the following details in the Basics tab: <br>

![Capture d’écran 2024-08-16 150250](https://github.com/user-attachments/assets/7d1c446d-bb46-46d9-9c61-2bad09b8bc36)

**Important**: <br>
Note that there are specific limitations for the names that dedicated SQL pools can use. Names can't contain special characters, must be 60 or less characters, not contain reserved words, and be unique in the workspace.<br>

3. Select Next: Additional settings. <br>
4. Select None to provision the dedicated SQL pool without data. <br>
5. Leave the default collation selected. <br>
If you want to restore your dedicated SQL pool from a restore point, select Restore point. <br>

![Capture d’écran 2024-08-16 150509](https://github.com/user-attachments/assets/82463e19-d60b-4889-80a8-ac5750c4ae25)
![Capture d’écran 2024-08-16 153942](https://github.com/user-attachments/assets/69b8e47a-ee84-4be8-bbd7-04fa935ab06c)
![Capture d’écran 2024-08-16 153942](https://github.com/user-attachments/assets/1cc696cd-0cc6-4a02-bed3-b51ba7482d49)
![Capture d’écran 2024-08-16 154104](https://github.com/user-attachments/assets/b15e95fe-994f-471d-8aa1-38e20750bbf1)
![Capture d’écran 2024-08-16 154210](https://github.com/user-attachments/assets/b3a68752-d42a-4968-9da3-f08f46f053b7)

























