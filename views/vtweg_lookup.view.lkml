view: vtweg_lookup {
  derived_table: {
    sql: SELECT DISTINCT
          VTWEG_distribution_channel,
          CASE
            WHEN VTWEG_distribution_channel = "10" THEN "Geräte"
            WHEN VTWEG_distribution_channel = "20" THEN "Systeme"
            WHEN VTWEG_distribution_channel = "30" THEN "OEM"
            WHEN VTWEG_distribution_channel = "40" THEN "Ersatzteile"
            WHEN VTWEG_distribution_channel = "50" THEN "Service"
            WHEN VTWEG_distribution_channel = "60" THEN "Ersatzteile RSF"
            ELSE "Undefined"
          END AS vtweg_distribution_channel_name
        FROM `weber-data-warehouse.playground_dataset.sis`   ;;
  }

  dimension: vtweg_distribution_channel {
    type: string
    hidden: yes
    sql: ${TABLE}.vtweg_distribution_channel ;;
  }
  dimension: vtweg_distribution_channel_name {
    type: string
    sql: ${TABLE}.vtweg_distribution_channel_name ;;
  }
}
