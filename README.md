
# End-to-End Azure Data Engineering Project

This repository contains the implementation of an end-to-end data engineering project using Azure services. The project demonstrates data ingestion, transformation, and analytics in a structured and scalable manner.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Architecture](#architecture)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Folder Structure](#folder-structure)
- [Azure Services Used](#azure-services-used)
- [Implementation Details](#implementation-details)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

---

## Project Overview

This project showcases a data pipeline implemented on Microsoft Azure. It takes data from an on-premises SQL Server database, processes it using Azure Data Factory (ADF), and stores it in Azure Data Lake Gen2. Data transformations are performed using Azure Databricks and are organized into three layers: Bronze, Silver, and Gold. Analytics are powered by Azure Synapse Analytics, and reporting is done with Power BI.

---

## Architecture

The data pipeline consists of the following key components:

1. **Ingestion**: Data is ingested from an on-premises SQL Server database using Azure Data Factory.
2. **Data Lake Storage**: Raw data is stored in Azure Data Lake Gen2 (Bronze layer).
3. **Transformation**: Data transformations are performed using Azure Databricks, creating Silver and Gold layers.
4. **Analytics**: Transformed data is loaded into Azure Synapse Analytics for further processing.
5. **Reporting**: Insights are visualized using Power BI.
6. **Security & Governance**: Secured with Azure Active Directory and Azure Key Vault.

---

## Features

- End-to-end data pipeline on Azure.
- Layered architecture with Bronze, Silver, and Gold layers.
- Scalable and secure data processing using Azure services.
- Integration with Power BI for real-time reporting.
- Emphasis on governance using Azure Active Directory and Azure Key Vault.

---

## Prerequisites

Before running this project, ensure you have:

- Access to Azure services: ADF, Azure Data Lake Gen2, Databricks, Synapse Analytics, and Power BI.
- An active Azure subscription.
- Python installed locally for Databricks scripting.
- SQL Server installed locally or access to an on-premises SQL database.

---

## Installation

### 1. Clone this repository:
```bash
git clone https://github.com/your-username/azure-data-engineering.git
cd azure-data-engineering
```

### 2. Set up Azure resources:
- Create Azure Data Factory, Data Lake Gen2, Databricks workspace, Synapse Analytics, and Power BI workspace.
- Configure Azure Key Vault for securing sensitive information.

### 3. Upload the provided `.ipynb` files to your Databricks workspace.

### 4. Execute the SQL scripts in your SQL Server or Azure Synapse Analytics environment.

### 5. Mount your Azure Data Lake Gen2 storage by running the `StorageMount.ipynb` notebook.

---

## Folder Structure

```
azure-data-engineering/
│
├── Bronze to Silver.ipynb       # Databricks notebook for Bronze to Silver transformations
├── Silver to Gold.ipynb         # Databricks notebook for Silver to Gold transformations
├── Create_Serverless_view.sql   # SQL script for Synapse Analytics
├── SQL script 1.sql             # Additional SQL script
├── SQL script 2.sql             # Additional SQL script
├── StorageMount.ipynb           # Databricks notebook for mounting Azure Data Lake
├── Screenshot 2024-12-01 204313.png # Project architecture diagram
├── README.md                    # Project documentation
```

---

## Azure Services Used

- **Azure Data Factory**: For data ingestion and orchestration.
- **Azure Data Lake Gen2**: For storing raw and processed data.
- **Azure Databricks**: For data transformation and processing.
- **Azure Synapse Analytics**: For analytics and querying.
- **Power BI**: For reporting and visualization.
- **Azure Active Directory**: For security and access control.
- **Azure Key Vault**: For managing secrets and credentials.

---

## Implementation Details

### Data Transformation
- **Bronze to Silver**: Raw data is cleaned and enriched. Refer to `Bronze to Silver.ipynb`.
- **Silver to Gold**: Analytical datasets are created. Refer to `Silver to Gold.ipynb`.

### SQL Scripts
- SQL scripts for setting up serverless views and additional transformations are located in the repository.

### Data Lake Mounting
- The `StorageMount.ipynb` notebook contains code to mount Azure Data Lake Gen2 for seamless access.

---

## Usage

1. Start by running the `StorageMount.ipynb` notebook to mount the Azure Data Lake.
2. Run the `Bronze to Silver.ipynb` notebook for initial data transformation.
3. Execute the `Silver to Gold.ipynb` notebook to prepare analytical datasets.
4. Use the SQL scripts to create views in Azure Synapse Analytics.
5. Connect Power BI to Synapse Analytics for real-time reporting.

---

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any feature suggestions or bug fixes.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
