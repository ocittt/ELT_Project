# ELT Project with Docker, PostgreSQL, dbt, and Airflow

This repository hosts a customized Extract, Load, Transform (ELT) project, showcasing a straightforward ELT workflow using Docker and PostgreSQL. The project employs dbt (data build tool) and Apache Airflow as the orchestrating tools to streamline the entire process, from data extraction to transformation and loading.

## Project Overview

### Technologies Used
- **Docker**: Containerization tool to create isolated environments for running services.
- **PostgreSQL**: Relational database for data storage.
- **dbt (data build tool)**: Data transformation tool to manage and orchestrate the transformation of raw data into a structured format.
- **Apache Airflow**: Workflow automation tool to schedule and manage data pipelines.

### Key Features
- **Jinja Templates**: Utilized within dbt to create dynamic SQL queries, making the codebase more modular and reusable.
- **Macros**: Implemented in dbt to encapsulate complex SQL logic into reusable functions, simplifying the transformation process.
- **Configured DAGs**: Developed and configured Directed Acyclic Graphs (DAGs) in Airflow to orchestrate the entire ELT workflow, ensuring data is processed and moved through the pipeline efficiently.

## Workflow
1. **Extraction**: Raw data is extracted from the source systems.
2. **Loading**: Extracted data is loaded into the PostgreSQL database.
3. **Transformation**: Loaded data is transformed using dbt, which leverages Jinja templates and macros to apply business logic and clean the data.
4. **Orchestration**: Apache Airflow manages the scheduling and execution of the ELT tasks through well-defined DAGs.

## Repository Structure
- **`docker/`**: Contains Docker configuration files for setting up the environment.
- **`airflow/dags/`**: Airflow DAG definitions for managing the workflow.
- **`custom_postgres/`**: dbt project directory with models, macros, and configuration files.
- **`custom_postgres/macros/`**: Additional scripts for managing data extraction and loading.

## Getting Started
### Prerequisites
- Docker and Docker Compose installed on your machine.

### Setup Instructions
1. Clone the repository:
   ```sh
   git clone https://github.com/ocittt/ELT_Project/tree/Airflow.git
   cd Elt

2. Build and start the Docker containers:
   ```sh
   docker-compose up --build

3. Access the Airflow web interface at http://localhost:8080 and log in with the default credentials (username: airflow, password: password)

### Usage
Running the Pipeline
1. Ensure that all services are up and running using Docker Compose.
2. Trigger the DAGs in the Airflow web interface to start the ELT process.

### Contributing
Feel free to open issues or submit pull requests if you have suggestions for improvements or find any bugs.
big thanks to justinbchau for sharing an aweasome 