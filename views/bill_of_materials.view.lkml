view: bill_of_materials {
  sql_table_name: `weber-data-warehouse.playground_dataset.bill_of_materials` ;;

  dimension: reference_number {
    type: string
    sql: ${TABLE}.reference_number ;;
  }
  dimension: component_id {
    type: string
    sql: ${TABLE}.component_id ;;
    drill_fields: [level]
  }
  dimension: component_quantity {
    type: number
    sql: ${TABLE}.component_quantity ;;
  }
  dimension: component_description {
    type: string
    sql: ${TABLE}.component_description ;;
  }
  dimension: component_parent_id {
    type: string
    sql: ${TABLE}.component_parent_id ;;
    drill_fields: [component_id]
  }
  dimension: component_unit {
    type: string
    sql: ${TABLE}.component_unit ;;
  }
  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }
  measure: count {
    label: "Total Components Count"
    type: count
    drill_fields: [detail*]
  }
  measure: component_id_count {
    label: "Distinct Component IDs Count"
    type: count_distinct
    sql: ${component_id} ;;
    drill_fields: [detail*]
  }
  set: detail {
    fields: [reference_number, component_id, component_quantity, component_description, component_parent_id, component_unit, level]}
}

#  how many of those components did we sell in the last year? or in total?).
