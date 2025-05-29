view: vis_logic {
  sql_table_name: `weber-data-warehouse.playground_dataset.vis_logic` ;;
  # fields_hidden_by_default: yes
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
    timeframes: [raw, date, week, month, quarter, year, fiscal_year, fiscal_quarter]
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
    # drill_fields: [erfassungs_datum_month, erfassungs_datum_quarter]
  }
  dimension: vkorg {
    type: string
    sql: ${TABLE}.VKORG ;;
  }
  dimension: waerk {
    type: string
    sql: ${TABLE}.WAERK ;;
  }
  dimension: total_vis_dimension {
    type: number
    hidden: yes
    sql: ${ae_vis} + ${gutschrift_vis} ;;
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
  measure: total_gutschrift_vis  {
    label: "Total Voucher Income"
    type: sum
    sql: ${gutschrift_vis} ;;
    value_format_name: eur_0
  }
  measure: total_vis {
    type: sum
    sql: ${total_vis_dimension} ;;
    value_format_name: eur_0
    drill_fields: [vbtyp, total_vis]
  }
}
