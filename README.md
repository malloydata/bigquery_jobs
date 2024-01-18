# BigQuery Jobs Analysis
This is a Data Model for the [information_schema.jobs](https://cloud.google.com/bigquery/docs/information-schema-jobs) in BigQuery. It queries the BigQuery Information Schema to give you information about how your internal users are using BigQuery. What queries are they running, how much compute are they using, and which tables are the most frequently queried?

## Getting Started:
1. Open up [Google Cloud Code](https://shell.cloud.google.com/?show=ide)
1. Install the Malloy VS Code extension in your Cloud Code IDE
1. Clone this Git repository in your Cloud Code IDE
1. Modify [config.malloy](config.malloy) to point to your data
1. Open up the [dashboard.malloynb file](dashboard.malloynb) and run all the queries in the notebook.

## Using Malloy for Data Transformation
You can use your Malloy model to build governed views in your database, by embedding Malloy queries into `CREATE VIEW AS ...`  SQL statements. The following files show how:
* [Create Views](create_views.malloysql) - this script persists a set of views in the database
* [SQL Examples](sql_examples.malloysql) - this script is an example of querying the views created above