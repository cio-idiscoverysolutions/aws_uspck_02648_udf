view: udf_udf {
  sql_table_name: udf.UDF ;;

  dimension: udf_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UDF_ID ;;
  }

  dimension: confidence {
    type: number
    sql: ${TABLE}.CONFIDENCE ;;
  }

  dimension_group: date_beg_lcl {
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
    sql: ${TABLE}.DATE_BEG_LCL ;;
  }

  dimension_group: date_beg_source {
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
    sql: ${TABLE}.DATE_BEG_SOURCE ;;
  }

  dimension_group: date_beg_utc {
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
    sql: ${TABLE}.DATE_BEG_UTC ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}.DATE_CREATED ;;
  }

  dimension_group: date_end_lcl {
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
    sql: ${TABLE}.DATE_END_LCL ;;
  }

  dimension_group: date_end_source {
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
    sql: ${TABLE}.DATE_END_SOURCE ;;
  }

  dimension_group: date_end_utc {
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
    sql: ${TABLE}.DATE_END_UTC ;;
  }

  dimension_group: date_lastmodified {
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
    sql: ${TABLE}.DATE_LASTMODIFIED ;;
  }

  dimension: dst {
    type: string
    sql: ${TABLE}.DST ;;
  }

  dimension: evt_id {
    type: number
    sql: ${TABLE}.EVT_ID ;;
  }

  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
  }

  dimension: gps_lon {
    type: number
    sql: ${TABLE}.GPS_LON ;;
  }

  dimension: has_gps {
    type: string
    sql: ${TABLE}.HAS_GPS ;;
  }

  dimension: loc_id {
    type: number
    sql: ${TABLE}.LOC_ID ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: obj_id {
    type: number
    sql: ${TABLE}.OBJ_ID ;;
  }

  dimension: pay {
    type: string
    sql: ${TABLE}.PAY ;;
  }

  dimension: ppl_id {
    type: number
    sql: ${TABLE}.PPL_ID ;;
  }

  dimension: src_id {
    type: number
    sql: ${TABLE}.SRC_ID ;;
  }

  dimension: src_record_id {
    type: number
    sql: ${TABLE}.SRC_RECORD_ID ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.VALUE ;;
  }

  dimension: version_status {
    type: string
    sql: ${TABLE}.VERSION_STATUS ;;
  }

  dimension: dateMonth {
    type: number
    sql: DATEPART(Month,${TABLE}.date_beg_lcl) ;;
  }

  dimension: dayDay {
    type: number
    sql: DATEPART(Weekday,${TABLE}.date_beg_lcl) ;;
  }

  dimension: dayHour {
    type: number
    sql: DATEPART(Hour,${TABLE}.date_beg_lcl) ;;
  }

  measure: count {
    type: count
    drill_fields: [udf_id]
  }

  measure: minDate {
    type:  date_time
    sql: MIN(${TABLE}."date_beg_lcl") ;;
  }

  measure: maxDate {
    type:  date_time
    sql: MAX(${TABLE}."date_beg_lcl") ;;
  }
}
