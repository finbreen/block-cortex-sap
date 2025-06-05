view: financial_planning_derived {
  # # You can specify the table name if it's different from the view name:
#   # Or, you could make this view a derived table, like this:
  derived_table: {
    explore_source: financial_planning {
      column: quelle_source { field: financial_planning.quelle_source }
      column: vertriebsstruktur_sales_structure { field: financial_planning.vertriebsstruktur_sales_structure }
      column: vtweg_sales_channel { field: financial_planning.vtweg_sales_channel }
      column: vkbur_sales_office  { field: financial_planning.vkbur_sales_office }
      column: region_region { field: financial_planning.region_region }
      column: plan_datum_plan_month { field: financial_planning.plan_datum_plan_month }
      column: vertriebsstruktur_dual_sales_structure_code { field: financial_planning.vertriebsstruktur_dual_sales_structure_code }
      column: vkorg_sales_organization { field: financial_planning.vkorg_sales_organization }
      column: planwert_plan_value  { field: financial_planning.total_planwert_plan_value }
      column: ae_plan_order_income { field: financial_planning.total_ae_plan_order_income }
      column: umsatz_plan_revenue { field: financial_planning.total_umsatz_plan_revenue }
      column: auftragsbestand_plan_order_backlog { field: financial_planning.total_auftragsbestand_plan_order_backlog }
    }
  }
  dimension: primary_key {
    hidden: yes
    primary_key: yes
    sql: CONCAT(${quelle_source}, ${vertriebsstruktur_sales_structure}, ${vtweg_sales_channel}, ${vkbur_sales_office}, ${region_region}, ${plan_datum_plan_month}, ${vertriebsstruktur_dual_sales_structure_code}, ${vkorg_sales_organization}) ;;
  }

  dimension: quelle_source {
    type: string
    sql: ${TABLE}.quelle_source ;;
  }

  dimension: vertriebsstruktur_sales_structure {
    type: string
    sql: ${TABLE}.vertriebsstruktur_sales_structure ;;
  }

  dimension: vtweg_sales_channel {
    type: string
    sql: ${TABLE}.vtweg_sales_channel ;;
  }

  dimension: vkbur_sales_office {
    type: string
    sql: ${TABLE}.vkbur_sales_office ;;
  }

  dimension: region_region {
    type: string
    sql: ${TABLE}.region_region ;;
  }

  dimension: plan_datum_plan_month {
    type: date_month
    datatype: timestamp
    sql: ${TABLE}.plan_datum_plan_month ;;
  }

  dimension: vertriebsstruktur_dual_sales_structure_code {
    type: number
    sql: ${TABLE}.vertriebsstruktur_dual_sales_structure_code ;;
  }

  dimension: vkorg_sales_organization {
    type: string
    sql: ${TABLE}.vkorg_sales_organization ;;
  }

  measure: total_planwert_plan_value {
    type: sum
    sql: ${TABLE}.planwert_plan_value ;;
    value_format_name: eur_0
  }

  measure: total_ae_plan_order_income {
    type: sum
    sql: ${TABLE}.ae_plan_order_income ;;
    value_format_name: eur_0
  }

  measure: total_umsatz_plan_revenue {
    type: sum
    sql: ${TABLE}.umsatz_plan_revenue ;;
    value_format_name: eur_0
  }

  measure: total_auftragsbestand_plan_order_backlog {
    type: sum
    sql: ${TABLE}.auftragsbestand_plan_order_backlog ;;
  }
}
