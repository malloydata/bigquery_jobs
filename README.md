# BigQuery Jobs Analysis
Model for information_schema.jobs in bigquery.  To run this model, Modify the [jobs_table.malloy](jobs_table.malloy) to point to your data.  Note, that this model won't yet run on Google Cloud Shell as it doesn't yet support Notebooks.

## Malloy Notebooks
* [Overall Statistics](overall.malloynb)
* [User Statistics](by_user.malloynb)
* [Most Expensive Queries](most_expensive.malloynb)

## Malloy Transformation
Malloy can build SQL Views for the this data.  View are created into the 'jobs_views' dataset.

* [Create Views](create_views.malloysql) - generate the views.
* [SQL Examples](sql_examples.malloysql) - example queries against the created views