view: udf_udf {
    sql_table_name: udf.udf ;;

    dimension: ppl_id {
      type: number
      sql: ${TABLE}."ppl_id" ;;
    }

    dimension: date_beg_lcl_yr {
      type: date_year
      sql: ${TABLE}."date_beg_lcl" ;;
    }
    dimension: date_beg_lcl_mn {
      type: date_month
      sql: ${TABLE}."date_beg_lcl" ;;
    }

    measure: count {
      type: count
      drill_fields: []
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
