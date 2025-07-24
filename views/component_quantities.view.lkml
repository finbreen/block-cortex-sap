view: component_quantities {
  sql_table_name: `weber-data-warehouse.playground_dataset.component_quantities` ;;

  dimension: component_description {
    type: string
    sql: ${TABLE}.component_description ;;
  }
  dimension: component_id {
    type: string
    sql: ${TABLE}.component_id ;;
  }
  dimension: component_quantity {
    type: number
    sql: ${TABLE}.component_quantity ;;
  }
  dimension: component_unit {
    type: string
    sql: ${TABLE}.component_unit ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: reference_number {
    type: string
    sql: ${TABLE}.reference_number ;;
  }
  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  measure: count {
    type: count
  }
}
