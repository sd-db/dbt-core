from collections import Counter


def model(dbt, spark):
    dbt.config(
        materialized="table",
        submission_method="all_purpose_cluster",
        create_notebook=True,
        user_folder_for_python=False,
        notebook_scoped_libraries=True,
        packages=["public-notebook-package==0.2.0"],
    )

    label_count = Counter(["notebook", "notebook"])["notebook"]
    return spark.createDataFrame(
        [(17, f"notebook_scope_{label_count}")],
        schema="id int, label string",
    )
