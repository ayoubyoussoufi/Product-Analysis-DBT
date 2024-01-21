This project aims at getting hands-on experience with DBT 


### The project files: 

-  First We need to have access to BigQuery of GCP cloud plateform. 
-  `amount_spent.sql` the sql query to compute the total amount spent per each customer 
-  `product_analysis.sql` the sql query to compute the number of products bought per each costumer 
-  `schema.yaml` the YAML file to describe the schema of the model 
-  `.dbt` contains `profiles.yaml` to describe the CI/CD of the project. We will be testing the model and pushing to the development stage to finally production stage as an end-point
-  `dbt_project.yml` file is a configuration file used by dbt (data build tool) to define various settings and configurations for a dbt project. This file is typically located in the root directory of the dbt project. The name of the deployed project is `name: 'dbt_core_demo'`

