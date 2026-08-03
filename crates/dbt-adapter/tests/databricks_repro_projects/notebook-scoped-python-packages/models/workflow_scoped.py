from itertools import chain


def model(dbt, spark):
    dbt.config(
        materialized="table",
        submission_method="workflow_job",
        user_folder_for_python=False,
        notebook_scoped_libraries=True,
        packages=["public-workflow-package==0.2.0"],
        python_job_config={"existing_cluster_id": "synthetic-workflow-cluster"},
    )

    return spark.createDataFrame(
        [(23, next(chain(["workflow_scope"])))],
        schema="id int, scenario string",
    )
