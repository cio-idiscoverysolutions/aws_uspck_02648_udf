view: ppl {
  sql_table_name: dim.PPL ;;

  dimension: ppl_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PPL_ID ;;
  }

  dimension_group: beg {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BEG_DATE ;;
  }




  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }

  dimension: ids_source {
    type: string
    sql: ${TABLE}.IDS_Source ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MIDDLE_NAME ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.UNIQUE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [ppl_id, full_name, first_name, middle_name, last_name]
  }
}
