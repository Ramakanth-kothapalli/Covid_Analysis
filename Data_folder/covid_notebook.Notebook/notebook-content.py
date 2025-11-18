# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "45793a36-e1b5-4026-b558-6c7006697404",
# META       "default_lakehouse_name": "covid_lakehouse",
# META       "default_lakehouse_workspace_id": "a68d353b-44d9-44d7-b728-9328bf598b09",
# META       "known_lakehouses": [
# META         {
# META           "id": "45793a36-e1b5-4026-b558-6c7006697404"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df = spark.read.parquet("Files/ecdc_cases.parquet")
# df now is a Spark DataFrame containing parquet data from "Files/ecdc_cases.parquet".
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
