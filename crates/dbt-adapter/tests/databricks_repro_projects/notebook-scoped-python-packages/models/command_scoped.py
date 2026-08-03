import math


def model(dbt, spark):
    dbt.config(
        materialized="table",
        submission_method="all_purpose_cluster",
        create_notebook=False,
        notebook_scoped_libraries=True,
        packages=["public-command-package==0.2.0"],
    )

    return spark.createDataFrame(
        [(13, math.floor(13.9))],
        schema="id int, rounded_value int",
    )
