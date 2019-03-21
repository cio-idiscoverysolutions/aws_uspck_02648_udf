connection: "aws_uspck-02648-udf"

# include all the views
include: "*.view"

datagroup: aws_uspck_02648_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_uspck_02648_default_datagroup

explore: dim_ppl {}

explore: udf_udf {
  join: dim_ppl {
    type: inner
    relationship: many_to_one
    sql_on: ${udf_udf.ppl_id} = ${dim_ppl.ppl_id} ;;
  }
}

# - explore: evt

# - explore: loc

# - explore: obj

# - explore: src
