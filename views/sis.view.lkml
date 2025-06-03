view: sis {
  sql_table_name: `weber-data-warehouse.playground_dataset.sis` ;;

  dimension: abgru_rejection_reason {
    type: string
    sql: ${TABLE}.ABGRU_rejection_reason ;;
  }
  dimension: aubel_sales_document {
    type: string
    sql: ${TABLE}.AUBEL_sales_document ;;
  }
  dimension_group: audat_document_date_calculated {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AUDAT_document_date_calculated ;;
  }
  dimension: aufnr_order_number {
    type: string
    sql: ${TABLE}.AUFNR_order_number ;;
  }
  dimension: aupos_sales_document_item {
    type: string
    sql: ${TABLE}.AUPOS_sales_document_item ;;
  }
  dimension: batch_background_processing {
    type: string
    sql: ${TABLE}.BATCH_background_processing ;;
  }
  dimension: cprog_calling_program {
    type: string
    sql: ${TABLE}.CPROG_calling_program ;;
  }
  dimension: credit_calculated {
    type: number
    sql: ${TABLE}.CREDIT_calculated ;;
  }
  dimension: credit_quantity_calculated {
    type: number
    sql: ${TABLE}.CREDIT_QUANTITY_calculated ;;
  }
  dimension: dynnr_screen_number {
    type: string
    sql: ${TABLE}.DYNNR_screen_number ;;
  }
  dimension_group: erdat_creation {
    type: time
    timeframes: [raw, date, week, month, quarter, year, fiscal_year, fiscal_quarter, fiscal_month_num]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ERDAT_creation_date ;;
  }
  dimension: erzet_entry_time {
    type: string
    sql: ${TABLE}.ERZET_entry_time ;;
  }
  dimension: fcode_function_code {
    type: string
    sql: ${TABLE}.FCODE_function_code ;;
  }
  dimension: gbsta_overall_processing_status_item {
    type: string
    sql: ${TABLE}.GBSTA_overall_processing_status_item ;;
  }
  dimension: gbstk_overall_processing_status_header {
    type: string
    sql: ${TABLE}.GBSTK_overall_processing_status_header ;;
  }
  dimension: invoice_quantity_calculated {
    type: number
    sql: ${TABLE}.INVOICE_QUANTITY_calculated ;;
  }
  dimension: is_deleted_record_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED_record_deleted ;;
  }
  dimension: kunnr_customer_number {
    type: string
    sql: ${TABLE}.KUNNR_customer_number ;;
  }
  dimension: kunrg_payer {
    type: string
    sql: ${TABLE}.KUNRG_payer ;;
  }
  dimension: mandt_client {
    type: string
    sql: ${TABLE}.MANDT_client ;;
  }
  dimension: matnr_material_number {
    type: string
    sql: ${TABLE}.MATNR_material_number ;;
  }
  dimension: meins_base_unit_measure {
    type: string
    sql: ${TABLE}.MEINS_base_unit_measure ;;
  }
  dimension: menge_quantity {
    type: number
    sql: ${TABLE}.MENGE_quantity ;;
  }
  dimension: netwr_eur_net_value_eur {
    type: number
    sql: ${TABLE}.NETWR_EUR_net_value_eur ;;
  }
  dimension: netwr_net_value {
    type: number
    sql: ${TABLE}.NETWR_net_value ;;
  }
  dimension: operation_flag_operation_flag {
    type: string
    sql: ${TABLE}.OPERATION_FLAG_operation_flag ;;
  }
  dimension: order_income_calculated {
    type: number
    sql: ${TABLE}.ORDER_INCOME_calculated ;;
  }
  dimension: paobjnr_profitability_object {
    type: string
    sql: ${TABLE}.PAOBJNR_profitability_object ;;
  }
  dimension: plaag_customer_country {
    type: string
    sql: ${TABLE}.PLAAG_customer_country ;;
  }
  dimension: posnr_billing_item {
    type: string
    sql: ${TABLE}.POSNR_billing_item ;;
  }
  dimension: ps_psp_pnr_wbs_element {
    type: string
    sql: ${TABLE}.PS_PSP_PNR_wbs_element ;;
  }
  dimension: quantity_calculated {
    type: number
    sql: ${TABLE}.QUANTITY_calculated ;;
  }
  dimension_group: recordstamp_record_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RECORDSTAMP_record_timestamp ;;
  }
  dimension: revenue_calculated {
    type: number
    sql: ${TABLE}.REVENUE_calculated ;;
  }
  dimension: spart_division {
    type: string
    sql: ${TABLE}.SPART_division ;;
  }
  dimension: tcode_transaction_code {
    type: string
    sql: ${TABLE}.TCODE_transaction_code ;;
  }
  dimension: ukurs_exchange_rate {
    type: number
    sql: ${TABLE}.UKURS_exchange_rate ;;
  }
  dimension: vbeln_billing_document {
    type: string
    sql: ${TABLE}.VBELN_billing_document ;;
  }
  dimension: vbtyp_document_category {
    type: string
    sql: ${TABLE}.VBTYP_document_category ;;
  }
  dimension: vgbel_reference_document {
    type: string
    sql: ${TABLE}.VGBEL_reference_document ;;
  }
  dimension: vgpos_reference_item {
    type: string
    sql: ${TABLE}.VGPOS_reference_item ;;
  }
  dimension: vkbur_sales_office {
    type: string
    sql: ${TABLE}.VKBUR_sales_office ;;
  }
  dimension: vkorg_sales_organization {
    type: string
    sql: ${TABLE}.VKORG_sales_organization ;;
  }
  dimension: vtweg_distribution_channel {
    type: string
    sql: ${TABLE}.VTWEG_distribution_channel ;;
  }
  dimension: waerk_document_currency {
    type: string
    sql: ${TABLE}.WAERK_document_currency ;;
  }
  dimension: xprog_system_exit_program {
    type: string
    sql: ${TABLE}.XPROG_system_exit_program ;;
  }
  dimension: zaehler_counter {
    type: string
    sql: ${TABLE}.ZAEHLER_counter ;;
  }

  set: drill_fields {
    fields: [aubel_sales_document, vbeln_billing_document, erdat_creation_date, audat_document_date_calculated_date, vbtyp_document_category, netwr_net_value, netwr_eur_net_value_eur, waerk_document_currency, ukurs_exchange_rate, menge_quantity, meins_base_unit_measure, order_income_calculated, revenue_calculated, credit_calculated
      ]}

  measure: count {
    type: count
  }
  measure: total_order_income {
    label: "Total Order Income"
    type: sum
    sql: ${order_income_calculated} + ${credit_calculated} ;;
    value_format_name: eur_0
    link: {
      label: "SIS Dashboard"
      url: "/dashboards/3?Vtweg+Distribution+Channel={{ _filters['sis.vtweg_distribution_channel']| url_encode }}"
    }
    drill_fields: [drill_fields*]
  }
  measure: total_revenue {
    label: "Total Revenue"
    type: sum
    sql: ${revenue_calculated} ;;
    value_format_name: eur_0
    drill_fields: [drill_fields*]
  }
  measure: total_credits {
    label: "Total Credits"
    type: sum
    sql: ${credit_calculated} ;;
    value_format_name: eur_0
    drill_fields: [drill_fields*]
  }

}
