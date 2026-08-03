def model(dbt, spark):
    dbt.config(
        materialized="table",
        submission_method="all_purpose_cluster",
        create_notebook=True,
        user_folder_for_python=False,
        notebook_scoped_libraries=True,
        packages=["fixture-package==0.2.0"],
    )

    return spark.createDataFrame(
        [(17, "library_scope_fixture")],
        schema="id int, label string",
    )
