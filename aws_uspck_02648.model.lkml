connection: "aws_uspck-02648-udf"

# include all the views
include: "*.view"

datagroup: aws_uspck_02648_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_uspck_02648_default_datagroup

explore: ppl {}

# - explore: evt

# - explore: loc

# - explore: obj

# - explore: src
