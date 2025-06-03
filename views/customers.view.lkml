view: customers {
  sql_table_name: `weber-data-warehouse.WEBER_BUSINESS_LOGIC.customers` ;;
  drill_fields: [kunnr_customer_id]

  dimension: kunnr_customer_id {
    primary_key: yes
    type: string
    description: "KunNr Kunde - Kundennummer ohne führende Nullen / Customer ID - Customer number without leading zeros"
    sql: ${TABLE}.KUNNR_customer_id ;;
  }
  dimension: adrnr_address_number {
    type: string
    description: "AdressNr Kunde - Adressnummer / Customer Address Number - Address number"
    sql: ${TABLE}.ADRNR_address_number ;;
  }
  dimension: anlagedatum_kunde_creation_date {
    type: string
    description: "AnlageDat Kunde - Anlagedatum des Kunden / Customer Creation Date - Customer creation date"
    sql: ${TABLE}.ANLAGEDATUM_KUNDE_creation_date ;;
  }
  dimension: anred_title {
    type: string
    description: "Anrede Kunde - Anredeschlüssel / Customer Title - Title key"
    sql: ${TABLE}.ANRED_title ;;
  }
  dimension: brsch_industry {
    type: string
    description: "Branche Kunde - Branchenschlüssel / Customer Industry - Industry key"
    sql: ${TABLE}.BRSCH_industry ;;
  }
  dimension: ktokd_account_group {
    type: string
    description: "Kontengr. Kunde - Kontengruppe / Customer Account Group - Account group"
    sql: ${TABLE}.KTOKD_account_group ;;
  }
  dimension: kukla_customer_class {
    type: string
    description: "Kundenklasse - Klassifizierung des Kunden / Customer Class - Customer classification"
    sql: ${TABLE}.KUKLA_customer_class ;;
  }
  dimension: kunde_customer_display {
    type: string
    description: "Kunde - Kombinierte Anzeige aus Nummer und Name / Customer Display - Combined display of number and name"
    sql: ${TABLE}.KUNDE_customer_display ;;
  }
  dimension: kunnr_customer_number {
    type: string
    description: "Kundennummer - Eindeutige Kennung des Kunden / Customer Number - Unique customer identifier"
    sql: ${TABLE}.KUNNR_customer_number ;;
  }
  dimension: land1_country {
    type: string
    description: "Land Kunde - Ländercode des Kunden / Customer Country - Country code of the customer"
    sql: ${TABLE}.LAND1_country ;;
  }
  dimension: name1_customer_name {
    type: string
    description: "Name Kunde - Primärer Kundenname / Customer Name - Primary customer name"
    sql: ${TABLE}.NAME1_customer_name ;;
  }
  dimension: name2_customer_name2 {
    type: string
    description: "Name2 Kunde - Zusätzlicher Kundenname / Customer Name 2 - Additional customer name"
    sql: ${TABLE}.NAME2_customer_name2 ;;
  }
  dimension: ort01_city {
    type: string
    description: "Ort Kunde - Stadt des Kunden / Customer City - City of the customer"
    sql: ${TABLE}.ORT01_city ;;
  }
  dimension: pfach_po_box {
    type: string
    description: "Postfach Kunde - Postfachnummer / Customer PO Box - PO box number"
    sql: ${TABLE}.PFACH_po_box ;;
  }
  dimension: pstl2_po_box_postal_code {
    type: string
    description: "PLZ-Postfach Kunde - Postfach-PLZ / Customer PO Box Postal Code - PO box postal code"
    sql: ${TABLE}.PSTL2_po_box_postal_code ;;
  }
  dimension: pstlz_ort_postal_city {
    type: string
    description: "PLZ Ort Kunde - Kombinierte PLZ und Ort / Customer Postal City - Combined postal code and city"
    sql: ${TABLE}.PSTLZ_ORT_postal_city ;;
  }
  dimension: pstlz_postal_code {
    type: string
    description: "PLZ Kunde - Postleitzahl des Kunden / Customer Postal Code - Postal code of the customer"
    sql: ${TABLE}.PSTLZ_postal_code ;;
  }
  dimension: regio_region {
    type: string
    description: "Region Kunde - Regionsschlüssel / Customer Region - Region key"
    sql: ${TABLE}.REGIO_region ;;
  }
  dimension: stceg_vat_number {
    type: string
    description: "USt-Id.Nr Kunde - Umsatzsteuer-ID / Customer VAT Number - VAT identification number"
    sql: ${TABLE}.STCEG_vat_number ;;
  }
  dimension: stras_street {
    type: string
    description: "Straße Kunde - Straßenadresse / Customer Street - Street address"
    sql: ${TABLE}.STRAS_street ;;
  }
  dimension: telf1_telephone {
    type: string
    description: "Telefon Kunde - Telefonnummer / Customer Telephone - Telephone number"
    sql: ${TABLE}.TELF1_telephone ;;
  }
  dimension: telfx_fax {
    type: string
    description: "Fax Kunde - Faxnummer / Customer Fax - Fax number"
    sql: ${TABLE}.TELFX_fax ;;
  }
  measure: count {
    type: count
    drill_fields: [kunnr_customer_id, name1_customer_name]
  }
}
