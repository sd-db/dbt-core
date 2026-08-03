def model(dbt, spark):
    rows = [(41, "sample", "zone-blue")]
    return spark.createDataFrame(
        rows,
        schema=["event_id", "event_class", "market_zone"],
    )
