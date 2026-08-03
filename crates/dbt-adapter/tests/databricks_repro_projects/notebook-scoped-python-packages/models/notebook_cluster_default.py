from itertools import repeat


def model(dbt, spark):
    dbt.config(
        materialized="table",
        submission_method="all_purpose_cluster",
        create_notebook=True,
        user_folder_for_python=False,
        notebook_scoped_libraries=False,
        packages=["public-default-package==0.2.0"],
    )

    return spark.createDataFrame(
        [(19, next(repeat("notebook_default")))],
        schema="id int, scenario string",
    )
