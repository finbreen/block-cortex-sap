view: financial_planning {
  sql_table_name: `weber-data-warehouse.WEBER_EXTERNAL_DATA.financial_planning` ;;

  dimension: ae_plan_order_income {
    type: number
    description: "Auftragseingang Plan - Geplanter Auftragseingang / Order Income Plan - Planned order income"
    sql: ${TABLE}.AE_PLAN_order_income ;;
  }
  dimension: auftragsbestand_plan_order_backlog {
    type: number
    description: "Auftragsbestand Plan - Geplanter Auftragsbestand / Order Backlog Plan - Planned order backlog"
    sql: ${TABLE}.AUFTRAGSBESTAND_PLAN_order_backlog ;;
  }
  dimension_group: geschaeftsjahr_datum_fiscal {
    type: time
    description: "Geschäftsjahrdatum - Datum des Geschäftsjahrs / Fiscal Year Date - Date of fiscal year"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.GESCHAEFTSJAHR_DATUM_fiscal_date ;;
  }
  dimension: geschaeftsjahr_monat_fiscal_year_month {
    type: string
    description: "Geschäftsjahr Monat - Jahr und Monat des Geschäftsjahrstarts (YYYY-MM) / Fiscal Year Month - Year and month of fiscal year start"
    sql: ${TABLE}.GESCHAEFTSJAHR_MONAT_fiscal_year_month ;;
  }
  dimension_group: load_timestamp_load_timestamp {
    type: time
    description: "Ladezeitpunkt - Zeitpunkt des Datenladens / Load Timestamp - Data loading timestamp"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.LOAD_TIMESTAMP_load_timestamp ;;
  }
  dimension_group: plan_datum_plan {
    type: time
    description: "Plandatum - Datum der Planung / Plan Date - Date of planning"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PLAN_DATUM_plan_date ;;
  }
  dimension: plan_jahr_monat_plan_year_month {
    type: string
    description: "Plan Jahr-Monat - Jahr und Monat der Planung (YYYY-MM) / Plan Year-Month - Year and month of planning"
    sql: ${TABLE}.PLAN_JAHR_MONAT_plan_year_month ;;
  }
  dimension: planwert_plan_value {
    type: number
    description: "Planwert - Geplanter Wert in EUR / Plan Value - Planned value in EUR"
    sql: ${TABLE}.PLANWERT_plan_value ;;
  }
  dimension: quelle_source {
    type: string
    description: "Quelle - Datenquelle (AE/UM/AB) / Source - Data source (Order Entry/Revenue/Order Backlog)"
    sql: ${TABLE}.QUELLE_source ;;
  }
  dimension: region_region {
    type: string
    description: "Region - Geografische Region (DE/USA/CN/FR) / Region - Geographic region"
    sql: ${TABLE}.REGION_region ;;
  }
  dimension: umsatz_plan_revenue {
    type: number
    description: "Umsatz Plan - Geplanter Umsatz / Revenue Plan - Planned revenue"
    sql: ${TABLE}.UMSATZ_PLAN_revenue ;;
  }
  dimension: vertriebsstruktur_dual_sales_structure_code {
    type: number
    description: "Vertriebsstruktur Code - Numerischer Code für Vertriebsstruktur / Sales Structure Code - Numeric code for sales structure"
    sql: ${TABLE}.VERTRIEBSSTRUKTUR_DUAL_sales_structure_code ;;
  }
  dimension: vertriebsstruktur_sales_structure {
    type: string
    description: "Vertriebsstruktur - Struktur des Vertriebs / Sales Structure - Structure of sales organization"
    sql: ${TABLE}.VERTRIEBSSTRUKTUR_sales_structure ;;
  }
  dimension: vkbur_sales_office {
    type: string
    description: "Verkaufsbüro - Regionale Verkaufseinheit / Sales Office - Regional sales unit"
    sql: ${TABLE}.VKBUR_sales_office ;;
  }
  dimension: vkorg_sales_organization {
    type: string
    description: "Verkaufsorganisation - Organisationseinheit für Vertrieb / Sales Organization - Organizational unit for sales"
    sql: ${TABLE}.VKORG_sales_organization ;;
  }
  dimension: vtweg_sales_channel {
    type: string
    description: "Vertriebsweg - Kanal über den verkauft wird / Sales Channel - Channel through which sales are made"
    sql: ${TABLE}.VTWEG_sales_channel ;;
  }
  dimension: zaehler_counter {
    type: number
    description: "Zähler - Technischer Zähler / Counter - Technical counter"
    sql: ${TABLE}.ZAEHLER_counter ;;
  }
  measure: count {
    type: count
  }


  measure: plan_order_income{
    label: "Plan Order Income"
    type: sum
    sql: ${ae_plan_order_income} ;;
    value_format_name: eur_0
  }

  measure: plan_revenue{
    label: "Plan Revenue"
    type: sum
    sql: ${umsatz_plan_revenue} ;;
    value_format_name: eur_0
  }
}
