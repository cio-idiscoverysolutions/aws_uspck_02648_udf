view: ids_vw_day_rollup {
  sql_table_name: dbo.ids_vw_DayRollup ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: driver_code {
    type: number
    sql: ${TABLE}.DriverCode ;;
  }

  dimension: driver_name {
    type: string
    sql: ${TABLE}.DriverName ;;
  }

  dimension: duration_hours {
    type: number
    sql: ${TABLE}.Duration_Hours ;;
  }

  dimension: duration_mins {
    type: number
    sql: ${TABLE}.Duration_Mins ;;
  }

  dimension: duration_seconds {
    type: number
    sql: ${TABLE}.Duration_Seconds ;;
  }

  dimension_group: first_gps_ping {
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
    sql: ${TABLE}.First_GPS_PING ;;
  }

  dimension_group: last_gps_ping {
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
    sql: ${TABLE}.Last_GPS_PING ;;
  }

  measure: count {
    type: count
    drill_fields: [driver_name]
  }
  measure: sum {
    type: sum
    drill_fields: [duration_hours]
  }
}
