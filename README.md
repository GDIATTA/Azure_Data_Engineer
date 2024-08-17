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

**------------------------ 1. Create a single database -----------------------** <br>
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

**-------------------------- 1.2. Query the database ------------------------:** <br>
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

**---- 1.3.2 Get server connection information ----** <br>
Get the connection information you need to connect to Azure SQL Database. You need the fully qualified server name or host name, database name, and login information for the upcoming procedures. <br> 
1. Sign in to the Azure portal. <br>
2. Navigate to the SQL databases or SQL Managed Instances page. <br>
3. On the Overview page, review the fully qualified server name next to Server name for SQL Database or the fully qualified server name next to Host for a SQL Managed Instance. To copy the server name or host name, hover over it and select the Copy icon. <br>
**mysqlserver1234567.database.windows.net** <br>
4. Added the IP address associated at this server: <br>

![Capture d’écran 2024-08-16 045236](https://github.com/user-attachments/assets/b167cadd-11ab-480b-8066-1417c223739c)

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
![Capture d’écran 2024-08-16 153942](https://github.com/user-attachments/assets/1cc696cd-0cc6-4a02-bed3-b51ba7482d49)
![Capture d’écran 2024-08-16 154104](https://github.com/user-attachments/assets/b15e95fe-994f-471d-8aa1-38e20750bbf1)
![Capture d’écran 2024-08-16 154210](https://github.com/user-attachments/assets/b3a68752-d42a-4968-9da3-f08f46f053b7)

**----- 3. Navigate to the Synapse Studio ------:** <br>
After your Synapse workspace is created, you have two ways to open Synapse Studio:<br>
+ Open your Synapse workspace in the Azure portal. Select Open on the Open Synapse Studio card under Getting started. <br>
+ Open Azure Synapse Analytics and sign in to your Workspace. <br>

![Capture d’écran 2024-08-16 040702](https://github.com/user-attachments/assets/84972eb9-13da-40c7-9851-9db3620540eb)

**---- 3.1 Create linked services ----** <br>
In Azure Synapse Analytics, a linked service is where you define your connection information to other services. In this section, you'll create following two kinds of linked services: **Azure SQL Database and Azure Data Lake Storage Gen2 (AzureDataLakeStorage1)** linked services. <br>
1. On the Synapse Studio home page, select the **Manage tab** in the left navigation. <br>
2. Under External connections, select **Linked services**. <br>
3. To add a linked service, select **New**. <br>

![Capture d’écran 2024-08-16 041017](https://github.com/user-attachments/assets/3d115117-0631-4844-8572-383f7b4ead8e)

4. Select **Azure SQL Database** from the gallery, and then select **Continue**. You can type "sql" in the search box to filter the connectors. <br>

![Capture d’écran 2024-08-16 041223](https://github.com/user-attachments/assets/33bbf256-f517-4fab-8828-09794f0e0548)

5. In the New Linked Service page, select **your server name and DB name** from the dropdown list, and specify the **username and password**. Click **Test connection** to validate the settings, then select **Create**. <br>

![Capture d’écran 2024-08-16 045108](https://github.com/user-attachments/assets/0cde4e41-7cb4-4e98-824a-49dcacceca25)

6. Repeat steps 3-4, but select **Azure Data Lake Storage Gen2** instead from the gallery. In the New Linked Service page, select your **storage account name** from the dropdown list. Click **Test connection** to validate the settings, then select **Create**. <br>

![Capture d’écran 2024-08-16 050122](https://github.com/user-attachments/assets/966b98ba-8646-4b1e-9503-b238ce552659)
![Capture d’écran 2024-08-16 050316](https://github.com/user-attachments/assets/dd66205a-3605-413c-aa05-b32ae39d29cb)
**---- 3.2 Create a pipeline -----:** <br>
A pipeline contains the logical flow for an execution of a set of activities. In this section, you'll create a pipeline containing a copy activity that ingests data from Azure SQL Database into a dedicated SQL pool. <br>
1. Go to the **Integrate tab**. Select on the plus icon next to the pipelines header and select Pipeline. <br>

![Capture d’écran 2024-08-16 050446](https://github.com/user-attachments/assets/c69903c9-2a5c-48d0-a080-40ffaa8c0375)

2. Under **Move and Transform** in the Activities pane, drag Copy data onto the pipeline canvas. <br>

![Capture d’écran 2024-08-16 050635](https://github.com/user-attachments/assets/807aac52-0879-44aa-8d23-f008f5e1e81a)

3. Select on the copy activity and go to the Source tab. Select **New** to create a new source dataset. <br>

![Capture d’écran 2024-08-16 051125](https://github.com/user-attachments/assets/23e91f0b-c0d6-45b6-9090-2dea2e49d013)

4. Select **Azure SQL Database** as your data store and select **Continue**. <br>

![Capture d’écran 2024-08-16 051248](https://github.com/user-attachments/assets/3a8a44ac-6f42-43c0-905d-79805eac03ff)

5. In the Set properties pane, select the Azure SQL Database linked service you created in earlier step. <br>
6. Under Table name, select a sample table to use in following copy activity. In this tutorial, we use **SalesLT.Customer** table as an example. <br>
7. Select OK when finished. <br>

![Capture d’écran 2024-08-16 051618](https://github.com/user-attachments/assets/70c8fbe7-9bc3-4d91-9245-2ba80cce3edb)
![Capture d’écran 2024-08-16 052251](https://github.com/user-attachments/assets/ef6d706a-36dd-4d80-9844-bf5773265f8e)

8. Select the copy activity and go to the **Sink tab**. Select **New** to create a new sink dataset. <br>
9. Select **Azure Synapse dedicated SQL pool** as your data store and select **Continue**. <br>

![Capture d’écran 2024-08-16 052622](https://github.com/user-attachments/assets/172fe2f5-f6ba-4d3e-bfd9-cb4eb92b3212)

11. In the Set properties pane, select the **SQL Analytics pool** you created in earlier step. If you're writing to an existing table, under Table name select it from the dropdown. Otherwise, check **Edit** and enter in your **new table name**. Select **OK** when finished. <br>

![Capture d’écran 2024-08-16 155329](https://github.com/user-attachments/assets/68c356ba-b165-4624-a3b6-325242ce32fe)

12. For Sink dataset settings, enable **Auto create table** in the Table option field. <br>
13. In the Settings page, select the checkbox for **Enable staging**. This option applies if your source data is not compatible with **PolyBase**. <br> In **Staging settings** section, select the **Azure Data Lake Storage Gen2** linked service you created in earlier step as the **staging storage**.<br>
The storage is used for staging the data before it loads into Azure Synapse Analytics by using PolyBase. After the copy is complete, the **interim data in Azure Data Lake Storage Gen2** is automatically cleaned up. <br>
14. To validate the pipeline, select Validate on the toolbar. You see the result of the Pipeline validation output on the right side of the page.<br>

![Capture d’écran 2024-08-16 161354](https://github.com/user-attachments/assets/901c387e-ee10-41b1-accc-73f2d600d92c)

**----- 3.2.1 Debug and publish the pipeline ----- :**  <br>
Once you've finished configuring your pipeline, you can execute a debug run before you publish your artifacts to verify everything is correct. <br>
1. To debug the pipeline, select **Debug** on the toolbar. You see the status of the pipeline run in the Output tab at the bottom of the window. <br>
2. Once the pipeline run succeeds, in the top toolbar, select **Publish all**. This action publishes entities (datasets, and pipelines) you created to the Synapse Analytics service. <br>
3. Wait until you see the **Successfully** published message. To see notification messages, select the bell button on the top-right. <br>

![Capture d’écran 2024-08-16 162129](https://github.com/user-attachments/assets/8968c7d2-a16b-45bb-b413-88a5b5f13a3f)
![Capture d’écran 2024-08-16 162226](https://github.com/user-attachments/assets/3f126706-cb7b-4d39-88fc-7ddffff887de)
![Capture d’écran 2024-08-16 162317](https://github.com/user-attachments/assets/37446141-3ae6-4678-924e-3ccb7272b2f0)


**----- 3.2.2 Trigger and monitor the pipeline -----:** <br>
In this section, you manually trigger the pipeline published in the previous step. <br>
1. Select **Add Trigger** on the toolbar, and then select **Trigger Now**. On the Pipeline Run page, select OK. <br>

![Capture d’écran 2024-08-16 162725](https://github.com/user-attachments/assets/29f01aa2-d59a-458f-b2c4-01559dd2c7e9)

2. Go to the **Monitor tab** located in the left sidebar. You see a pipeline run that is triggered by a manual trigger. <br>
3. When the pipeline run completes successfully, select the link under the **Pipeline name** column to view activity run details or to rerun the pipeline. In this example, there's only one activity, so you see only one entry in the list. <br>

![Capture d’écran 2024-08-16 162930](https://github.com/user-attachments/assets/36453ad4-262b-4987-a04d-5c4529587396)

4. For details about the copy operation, select the Details link (eyeglasses icon) under the Activity name column. You can monitor details like the volume of data copied from the source to the sink, data throughput, execution steps with corresponding duration, and used configurations. <br>
5. To switch back to the pipeline runs view, select the All pipeline runs link at the top. Select Refresh to refresh the list. <br>
6. Verify your data is correctly written in the dedicated SQL pool. <br>

![Capture d’écran 2024-08-16 163439](https://github.com/user-attachments/assets/04a2c19f-7753-4636-85d0-36efab2355c6)

**-------- 4. Create a pipeline with a Data Flow activity -----:** <br>
A pipeline contains the logical flow for an execution of a set of activities. In this section, you'll create a pipeline that contains a Data Flow activity. <br>
1. Go to the **Integrate tab**. Select on the plus icon next to the pipelines header and select Pipeline. <br>
2. In the Properties settings page of the pipeline, enter **TransformMovies** for Name. <br>
3. Under **Move and Transform** in the Activities pane, drag Data flow onto the pipeline canvas. <br>
4. In the Adding data flow page pop-up, select Create new data flow -> Data flow. Click OK when done. <br>
5. Name your data flow TransformMovies on the Properties page. <br>

![Capture d’écran 2024-08-16 170931](https://github.com/user-attachments/assets/3ab02952-5ee7-497d-bc62-c4a93e700a43)

**---- 4.1 Build transformation logic in the data flow canvas ----:** <br>
Once you create your Data Flow, you'll be automatically sent to the data flow canvas. In this step, you'll build a data flow that takes the MoviesDB.csv in ADLS storage and aggregates the average rating of comedies from 1910 to 2000. You'll then write this file back to the ADLS storage. <br>
1. Above the data flow canvas, slide the Data flow **debug slider on**. Debug mode allows for interactive testing of transformation logic against a live Spark cluster. Data Flow clusters take 5-7 minutes to warm up and users are recommended to turn on debug first if they plan to do Data Flow development. <br>

![Capture d’écran 2024-08-17 002634](https://github.com/user-attachments/assets/36edf8f0-925e-431b-bef8-6283ab83f9e1)

2. In the data flow canvas, add a source by clicking on the **Add Source box**. <br>

![Capture d’écran 2024-08-16 172004](https://github.com/user-attachments/assets/6abae239-e577-48f0-b5cb-4c8a62957806)

3. Name your source **MoviesDB**. Click on **New** to create a new source dataset. <br>
4. Choose **Azure Data Lake Storage Gen2**. Click **Continue**. <br>

![Capture d’écran 2024-08-16 172408](https://github.com/user-attachments/assets/33a3d142-e320-41aa-adae-fb43fbcce61b)

5. Choose **DelimitedText**. Click **Continue**. <br>

![Capture d’écran 2024-08-16 172453](https://github.com/user-attachments/assets/5b8a3a64-edb8-4ebd-b957-04f3ab25e763)

6. Name your dataset **MoviesDB**. In the linked service dropdown, choose **New**. <br>
7. In the linked service creation screen, name your ADLS Gen2 linked service **AzureDataLakeStorage1** and specify your authentication method. Then enter your connection credentials. In this tutorial, we're using Account key to connect to our storage account. You can click Test connection to verify your credentials were entered correctly. Click Create when finished. <br>
8. Once you're back at the dataset creation screen, under the **File path field**, enter where your file is located. In this tutorial, the file **MoviesDB.csv** is located in container **filegauss1**. As the file has headers, check First row as header. Select From **connection/store** to import the header schema directly from the file in storage. Click **OK** when done. <br>

![Capture d’écran 2024-08-16 172844](https://github.com/user-attachments/assets/87b5ae4e-99e2-4ea8-ac38-b9ba7014074a)

9. if your debug cluster has started, go to the Data Preview tab of the source transformation and click Refresh to get a snapshot of the data. You can use data preview to verify your transformation is configured correctly. <br>

![Capture d’écran 2024-08-16 173002](https://github.com/user-attachments/assets/9dc699b2-d571-41cc-b2e8-e1bb70aee9e4)
![Capture d’écran 2024-08-16 173121](https://github.com/user-attachments/assets/c40153d7-47ae-48c2-92eb-d73dcc7f55a9)

10. Next to your source node on the data flow canvas, click on the **plus icon** to add a new transformation. The first transformation you're adding is a **Filter**. <br>

![Capture d’écran 2024-08-16 173333](https://github.com/user-attachments/assets/2289c268-3d81-47f4-a0c3-0876a6fffa50)

11. Name your filter transformation **filter1**. Click on the expression box next to Filter on to open the expression builder. Here you'll specify your filtering condition. <br>
12. The data flow expression builder lets you interactively build expressions to use in various transformations. Expressions can include built-in functions, columns from the input schema, and user-defined parameters. <br>

In this tutorial, we want to filter movies of genre comedy that came out between the years 1910 and 2000. As year is currently a string, you need to convert it to an integer using the toInteger() function. Use the greater than or equals to (>=) and less than or equals to (<=) operators to compare against literal year values 1910 and 200-. Union these expressions together with the && (and) operator. The expression comes out as: <br>
**toInteger(year) >= 1910 && toInteger(year) <= 2000** <br>
To find which movies are comedies, you can use the rlike() function to find pattern 'Comedy' in the column genres. Union the rlike expression with the year comparison to get: <br>
**toInteger(year) >= 1910 && toInteger(year) <= 2000 && rlike(genres, 'Comedy')** <br>
If you've a debug cluster active, you can verify your logic by clicking Refresh to see expression output compared to the inputs used. There's more than one right answer on how you can accomplish this logic using the data flow expression language. <br>
Click Save and Finish once you're done with your expression. <br>

![Capture d’écran 2024-08-16 174325](https://github.com/user-attachments/assets/e76f37c6-0fcc-46b2-ad5c-a2824275fe7b)

13. Fetch a **Data Preview** to verify the filter is working correctly. <br>

![Capture d’écran 2024-08-16 174352](https://github.com/user-attachments/assets/a2dff10a-95fe-4adc-b2ee-0efd50813f3d)

14. The next transformation you'll add is an **Aggregate transformation** under Schema modifier. <br>

![Capture d’écran 2024-08-16 174601](https://github.com/user-attachments/assets/08f6e152-fd76-4569-bab7-6786a90b3f1b)

15. Name your aggregate transformation **Aggregate1**. In the Group by tab, select **year** from the dropdown to group the aggregations by the year the movie came out. <br>

![Capture d’écran 2024-08-16 174823](https://github.com/user-attachments/assets/09c7ad84-2af2-44d8-b92c-6190699c453a)

16. Go to the **Aggregates tab**. In the left text box, name the aggregate column **AverageComedyRating**. Click on the **right expression box** to enter the **aggregate expression** via the expression builder. <br>
17. To get the average of column Rating, use the avg() aggregate function. As Rating is a string and avg() takes in a numerical input, we must convert the value to a number via the toInteger() function. This expression looks like: <br>
**avg(toInteger(Rating))**. <br>

![Capture d’écran 2024-08-16 175130](https://github.com/user-attachments/assets/59f901e0-27f4-426b-8294-5a899df0e854)

18. Go to the **Data Preview tab** to view the transformation output. Notice only two columns are there, year and AverageComedyRating. <br>

![Capture d’écran 2024-08-16 175230](https://github.com/user-attachments/assets/47b2141c-160b-4ad8-8bd8-b0bf9ddc5b32)

19. Next, you want to **add a Sink transformation** under Destination. <br>

![Capture d’écran 2024-08-16 175354](https://github.com/user-attachments/assets/8f431856-37ee-4bac-b630-cf920454d6ee)

20. Name your sink **sink1**. Click **New** to create your sink dataset. <br>
21. Choose **Azure Data Lake Storage Gen2**. Click **Continue**. <br>

![Capture d’écran 2024-08-16 175508](https://github.com/user-attachments/assets/df88dc91-af3c-45c5-b434-2de8291eebef)

22. Choose **DelimitedText**. Click **Continue**. <br>

![Capture d’écran 2024-08-16 175545](https://github.com/user-attachments/assets/d1c8adef-cc17-4b96-93c0-85e79b291612)

23. Name your sink dataset **MoviesSink**. For linked service, choose the **AzureDataLakeStorage1** linked service you created in step 7. Enter an output folder to write your data to. In this tutorial, we're writing to folder 'output' in container **folder1**. The folder doesn't need to exist beforehand and can be dynamically created. Set First row as header as true and select None for Import schema. Click **OK** when done. <br>

![Capture d’écran 2024-08-16 175802](https://github.com/user-attachments/assets/84746b4c-9848-43ea-b745-abf63de8b2b4)
![Capture d’écran 2024-08-16 180223](https://github.com/user-attachments/assets/fc658dcd-59a4-4e85-a518-5161d471d71c)

Now you've finished building your data flow. You're ready to run it in your pipeline. <br>

**------- Running and monitoring the Data Flow --------:** <br>
You can debug a pipeline before you publish it. In this step, you're going to trigger a debug run of the data flow pipeline. While data preview doesn't write data, a debug run will write data to your sink destination. <br>

![Capture d’écran 2024-08-17 010448](https://github.com/user-attachments/assets/7851bbe5-192a-4aaa-a805-5a1276ca4909)

1. Go to the pipeline canvas. Click Debug to trigger a debug run. <br>
2. Pipeline debug of Data Flow activities uses the active debug cluster but still take at least a minute to initialize. You can track the progress via the Output tab. Once the run is successful, click on the eyeglasses icon to open the monitoring pane. <br>

![Capture d’écran 2024-08-17 010719](https://github.com/user-attachments/assets/b5425d7d-f1e1-42fd-b496-4658811ce6ad)

3. In the monitoring pane, you can see the number of rows and time spent in each transformation step. <br>

![Capture d’écran 2024-08-17 010810](https://github.com/user-attachments/assets/fac82aca-859f-4729-a476-1d10568733a6)

























