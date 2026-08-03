def model(dbt, spark):
    dbt.config(
        materialized="table",
        submission_method="all_purpose_cluster",
        create_notebook=False,
        notebook_scoped_libraries=True,
        packages=[],
    )

    return spark.createDataFrame(
        [(11, "command_empty")],
        schema="id int, scenario string",
    )
