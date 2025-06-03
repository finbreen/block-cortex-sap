view: document_categories {
  sql_table_name: `weber-data-warehouse.WEBER_MAPPINGS.document_categories` ;;

  dimension_group: created_date_creation {
    type: time
    description: "Erstellungsdatum - Datum der Mapping-Erstellung / Creation Date - Date of mapping creation"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATED_DATE_creation_date ;;
  }
  dimension: is_active_mapping_active {
    type: yesno
    description: "Aktiv - Kennzeichen für aktive Zuordnung / Active - Flag for active mapping"
    sql: ${TABLE}.IS_ACTIVE_mapping_active ;;
  }
  dimension_group: last_updated_last_update {
    type: time
    description: "Letzte Aktualisierung - Zeitstempel der letzten Änderung / Last Updated - Timestamp of last modification"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.LAST_UPDATED_last_update ;;
  }
  dimension: vbtyp_document_category {
    type: string
    description: "Belegart - SAP Dokumentkategorie-Code / Document Category - SAP document category code"
    sql: ${TABLE}.VBTYP_document_category ;;
  }
  dimension: vertriebsbelegtyp_de_document_type_german {
    type: string
    description: "Vertriebsbelegtyp (Deutsch) - Deutsche Bezeichnung des Belegtyps / Document Type German - German description of document type"
    sql: ${TABLE}.VERTRIEBSBELEGTYP_DE_document_type_german ;;
  }
  dimension: vertriebsbelegtyp_en_document_type_english {
    type: string
    description: "Vertriebsbelegtyp (Englisch) - Englische Bezeichnung des Belegtyps / Document Type English - English description of document type"
    sql: ${TABLE}.VERTRIEBSBELEGTYP_EN_document_type_english ;;
  }
  measure: count {
    type: count
  }
}
