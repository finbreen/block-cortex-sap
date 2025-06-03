view: tvtwt {
  sql_table_name: `weber-data-warehouse.SAP_PROD_010.tvtwt` ;;

  dimension: is_deleted {
    type: yesno
    description: "Is Record Deleted"
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: mandt {
    type: string
    description: "Mandant"
    sql: ${TABLE}.mandt ;;
  }
  dimension: operation_flag {
    type: string
    description: "Operation Flag"
    sql: ${TABLE}.operation_flag ;;
  }
  dimension_group: recordstamp {
    type: time
    description: "Record Timestamp"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }
  dimension: spras {
    type: string
    description: "Sprachenschlüssel"
    sql: ${TABLE}.spras ;;
  }
  dimension: vtext {
    type: string
    description: "Bezeichnung"
    sql: ${TABLE}.vtext ;;
  }
  dimension: vtweg {
    type: string
    description: "Vertriebsweg"
    sql: ${TABLE}.vtweg ;;
  }
  measure: count {
    type: count
  }
}
