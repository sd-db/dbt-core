def model(dbt, spark):
    rows = [(31, "sample", "zone-green")]
    return spark.createDataFrame(
        rows,
        schema=["event_id", "event_class", "market_zone"],
    )
