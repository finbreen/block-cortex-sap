view: vis_26052025 {
  sql_table_name: `playground_dataset.vis_26052025` ;;

  dimension: ae_vis {
    type: number
    sql: ${TABLE}.ae_vis ;;
  }
  dimension: auftrg_eing_menge_vis {
    type: number
    sql: ${TABLE}.auftrg_eing_menge_vis ;;
  }
  dimension_group: erfassungs_datum {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.erfassungs_datum ;;
  }
  dimension: fakturamenge_vis {
    type: number
    sql: ${TABLE}.fakturamenge_vis ;;
  }
  dimension: gutschrift_vis {
    type: number
    sql: ${TABLE}.gutschrift_vis ;;
  }
  dimension: gutschriftmenge_vis {
    type: number
    sql: ${TABLE}.gutschriftmenge_vis ;;
  }
  dimension: nettowert_eur {
    type: number
    sql: ${TABLE}.nettowert_eur ;;
  }
  dimension: order_no_trim {
    type: string
    sql: ${TABLE}.order_no_trim ;;
  }
  dimension: order_pos_trim {
    type: string
    sql: ${TABLE}.order_pos_trim ;;
  }
  dimension: umsatz_vis {
    type: number
    sql: ${TABLE}.umsatz_vis ;;
  }
  dimension: vbeln_trim {
    type: string
    sql: ${TABLE}.vbeln_trim ;;
  }
  dimension: vbtyp {
    type: string
    sql: ${TABLE}.VBTYP ;;
  }
  dimension: vkorg {
    type: string
    sql: ${TABLE}.VKORG ;;
  }
  dimension: vtweg {
    type: string
    sql: ${TABLE}.VTWEG ;;
  }
  dimension: waerk {
    type: string
    sql: ${TABLE}.WAERK ;;
  }
  measure: count {
    type: count
  }
  measure: total_ae_vis {
    label: "Total Order Income"
    type: sum
    sql: ${ae_vis} ;;
    value_format_name: eur_0
  }
}
