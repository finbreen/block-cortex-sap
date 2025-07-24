view: tvtwt {

  derived_table: {
    sql:
      SELECT
        *
      FROM
        `weber-data-warehouse.SAP_PROD_010.tvtwt`
      WHERE spras = 'D'
        AND vtweg NOT IN ('00', '01', '70', '80');;
  }



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

  dimension: vtweg_vtext {
    type: string
    description: "Vertriebsweg - Vertriebsbezeichnung | Sales Channel - Sales Channel Description"
    sql: CONCAT(${TABLE}.vtweg, ' - ', ${vtext}) ;;
  }

  measure: count {
    type: count
  }
}
