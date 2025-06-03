view: sis {
  sql_table_name: `weber-data-warehouse.WEBER_BUSINESS_LOGIC.sis` ;;

  dimension: abgru_rejection_reason {
    type: string
    description: "Ablehnungsgrund - Code für Grund der Auftragsablehnung / Rejection Reason - Code indicating reason for order rejection"
    sql: ${TABLE}.ABGRU_rejection_reason ;;
  }
  dimension: aubel_sales_document {
    type: string
    description: "Vertriebsbeleg (Auftrag) - Eindeutige Nummer des Kundenauftrags / Sales Document (Order) - Unique number of the customer sales order"
    sql: ${TABLE}.AUBEL_sales_document ;;
  }
  dimension_group: audat_document_date_calculated {
    type: time
    description: "Dokumentdatum (berechnet) - Berechnetes Belegdatum basierend auf Geschäftslogik / Document Date (Calculated) - Calculated document date based on business logic"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AUDAT_document_date_calculated ;;
  }
  dimension: aufnr_order_number {
    type: string
    description: "Auftragsnummer (CO) - Interne Auftragsnummer aus der Kostenrechnung / Internal Order Number (CO) - Internal order number from cost accounting"
    sql: ${TABLE}.AUFNR_order_number ;;
  }
  dimension: aupos_sales_document_item {
    type: string
    description: "Auftragsposition - Positionsnummer innerhalb des Vertriebsbelegs / Sales Document Item - Line item number within the sales document"
    sql: ${TABLE}.AUPOS_sales_document_item ;;
  }
  dimension: batch_background_processing {
    type: string
    description: "Batch-Verarbeitung - Kennzeichen für Hintergrundverarbeitung / Background Processing - Indicator for background job processing"
    sql: ${TABLE}.BATCH_background_processing ;;
  }
  dimension: cprog_calling_program {
    type: string
    description: "Aufrufendes Programm - Name des Programms das die Transaktion ausgelöst hat / Calling Program - Name of the program that triggered the transaction"
    sql: ${TABLE}.CPROG_calling_program ;;
  }
  dimension: credit_calculated {
    type: number
    description: "Gutschrift-/Lastschriftwert - Berechneter Wert für Korrekturbuchungen / Credit-Debit Value - Calculated value for correction postings"
    sql: ${TABLE}.CREDIT_calculated ;;
  }
  dimension: credit_quantity_calculated {
    type: number
    description: "Gutschrift-/Lastschriftmenge - Berechnete Menge für Korrekturbuchungen / Credit-Debit Quantity - Calculated quantity for correction postings"
    sql: ${TABLE}.CREDIT_QUANTITY_calculated ;;
  }
  dimension: dynnr_screen_number {
    type: string
    description: "Dynpro-Nummer - Bildschirmnummer der verwendeten Benutzeroberfläche / Screen Number - Screen number of the user interface used"
    sql: ${TABLE}.DYNNR_screen_number ;;
  }
  dimension_group: erdat_creation {
    type: time
    timeframes: [raw, date, week, month, month_name, quarter, year, fiscal_year, fiscal_quarter, fiscal_month_num]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ERDAT_creation_date ;;
  }

  dimension: erdat_creation_fiscal_year_string  {
    type:  string
    sql:  CONCAT("FY", CAST(${erdat_creation_fiscal_year} AS string)) ;;
  }

  dimension: erdat_creation_month_string  {
    type:  string
    #sql:  CONCAT(${erdat_creation_fiscal_month_num}, '-', CAST(${erdat_creation_month_name} AS string)) ;;
    sql:   CAST(${erdat_creation_month_name} AS string);;
    order_by_field:  erdat_creation_fiscal_month_num
  }

  dimension: erzet_entry_time {
    type: string
    description: "Anlageuhrzeit - Uhrzeit der Erstellung im Format HHMMSS / Entry Time - Time of record creation in HHMMSS format"
    sql: ${TABLE}.ERZET_entry_time ;;
  }
  dimension: fcode_function_code {
    type: string
    description: "Funktionscode - Spezifischer Funktionscode innerhalb der Transaktion / Function Code - Specific function code within the transaction"
    sql: ${TABLE}.FCODE_function_code ;;
  }
  dimension: gbsta_overall_processing_status_item {
    type: string
    description: "Verarbeitungsstatus Position - Gesamtstatus der Belegverarbeitung auf Positionsebene / Overall Processing Status Item - Overall document processing status at item level"
    sql: ${TABLE}.GBSTA_overall_processing_status_item ;;
  }
  dimension: gbstk_overall_processing_status_header {
    type: string
    description: "Verarbeitungsstatus Kopf - Gesamtstatus der Belegverarbeitung auf Kopfebene / Overall Processing Status Header - Overall document processing status at header level"
    sql: ${TABLE}.GBSTK_overall_processing_status_header ;;
  }
  dimension: invoice_quantity_calculated {
    type: number
    description: "Menge Faktura - Berechnete fakturierte Menge für Umsatzstatistik / Invoiced Quantity - Calculated invoiced quantity for revenue statistics"
    sql: ${TABLE}.INVOICE_QUANTITY_calculated ;;
  }
  dimension: is_deleted_record_deleted {
    type: yesno
    description: "Logische Löschung - Kennzeichen für logisch gelöschte Datensätze / Logical Delete - Flag indicating logically deleted records"
    sql: ${TABLE}.IS_DELETED_record_deleted ;;
  }
  dimension: kunnr_customer_number {
    type: string
    description: "Debitor (Sold-to) - Kundennummer des Auftragsgebers / Customer Number (Sold-to) - Customer number of the ordering party"
    sql: ${TABLE}.KUNNR_customer_number ;;
  }
  dimension: kunrg_payer {
    type: string
    description: "Zahlungspflichtiger - Kundennummer des rechnungsempfangenden Partners / Payer - Customer number of the invoice recipient partner"
    sql: ${TABLE}.KUNRG_payer ;;
  }
  dimension: mandt_client {
    type: string
    description: "Mandant - Eindeutige Kennung des SAP-Mandanten / Client - Unique identifier for the SAP client system"
    sql: ${TABLE}.MANDT_client ;;
  }
  dimension: matnr_material_number {
    type: string
    description: "Materialnummer - Eindeutige Kennung des verkauften Materials/Produkts / Material Number - Unique identifier of the sold material/product"
    sql: ${TABLE}.MATNR_material_number ;;
  }
  dimension: meins_base_unit_measure {
    type: string
    description: "Basismengeneinheit - Maßeinheit für die Mengenangabe / Base Unit of Measure - Unit of measurement for quantity specification"
    sql: ${TABLE}.MEINS_base_unit_measure ;;
  }
  dimension: menge_quantity {
    type: number
    description: "Menge laut Beleg - Mengenwert gemäß Originalbeleg / Quantity per Document - Quantity value according to original document"
    sql: ${TABLE}.MENGE_quantity ;;
  }
  dimension: netwr_eur_net_value_eur {
    type: number
    description: "Nettowert EUR - Umgerechneter Nettobetrag in Euro / Net Value EUR - Converted net amount in Euro currency"
    sql: ${TABLE}.NETWR_EUR_net_value_eur ;;
  }
  dimension: netwr_net_value {
    type: number
    description: "Nettowert Belegwährung - Nettobetrag in der ursprünglichen Belegwährung / Net Value Document Currency - Net amount in the original document currency"
    sql: ${TABLE}.NETWR_net_value ;;
  }
  dimension: operation_flag_operation_flag {
    type: string
    description: "CDC-Operation (I/U/D) - Change Data Capture Operationstyp (Insert/Update/Delete) / CDC Operation Flag - Change Data Capture operation type (Insert/Update/Delete)"
    sql: ${TABLE}.OPERATION_FLAG_operation_flag ;;
  }
  dimension: order_income_calculated {
    type: number
    description: "Auftragseingang (AE) - Berechneter Wert für Neuaufträge und Auftragsänderungen / Order Income - Calculated value for new orders and order changes"
    sql: ${TABLE}.ORDER_INCOME_calculated ;;
  }
  dimension: paobjnr_profitability_object {
    type: string
    description: "CO-PA Ergebnisobjekt - Objekt für Ergebnisrechnung und Profitabilitätsanalyse / CO-PA Profitability Object - Object for profitability analysis and accounting"
    sql: ${TABLE}.PAOBJNR_profitability_object ;;
  }
  dimension: plaag_customer_country {
    type: string
    description: "Länderkennzeichen Kunde - ISO-Ländercode des Kundenstandorts / Customer Country - ISO country code of customer location"
    sql: ${TABLE}.PLAAG_customer_country ;;
  }
  dimension: posnr_billing_item {
    type: string
    description: "Faktura-Positionsnummer - Positionsnummer innerhalb der Rechnung / Billing Item Number - Line item number within the invoice"
    sql: ${TABLE}.POSNR_billing_item ;;
  }
  dimension: ps_psp_pnr_wbs_element {
    type: string
    description: "PSP-Element - Projektstrukturplan-Element für Projektbuchungen / WBS Element - Work Breakdown Structure element for project postings"
    sql: ${TABLE}.PS_PSP_PNR_wbs_element ;;
  }
  dimension: quantity_calculated {
    type: number
    description: "Menge Auftragseingang - Berechnete Menge für Auftragseingangsstatistik / Order Income Quantity - Calculated quantity for order income statistics"
    sql: ${TABLE}.QUANTITY_calculated ;;
  }
  dimension_group: recordstamp_record_timestamp {
    type: time
    description: "Zeitstempel Quelle - Zeitstempel der letzten Änderung im Quellsystem / Source Record Timestamp - Timestamp of last change in source system"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RECORDSTAMP_record_timestamp ;;
  }
  dimension: revenue_calculated {
    type: number
    description: "Umsatz - Berechneter Umsatzwert basierend auf Rechnungsstellung / Revenue - Calculated revenue value based on invoicing"
    sql: ${TABLE}.REVENUE_calculated ;;
  }
  dimension: spart_division {
    type: string
    description: "Sparte - Produktbereichsklassifizierung für Vertriebszwecke / Division - Product area classification for sales purposes"
    sql: ${TABLE}.SPART_division ;;
  }
  dimension: tcode_transaction_code {
    type: string
    description: "Transaktionscode - SAP-Transaktionscode der den Beleg erstellt hat / Transaction Code - SAP transaction code that created the document"
    sql: ${TABLE}.TCODE_transaction_code ;;
  }
  dimension: ukurs_exchange_rate {
    type: number
    description: "Wechselkurs - Umrechnungskurs von Belegwährung zu Euro / Exchange Rate - Conversion rate from document currency to Euro"
    sql: ${TABLE}.UKURS_exchange_rate ;;
  }
  dimension: vbeln_billing_document {
    type: string
    description: "Faktura-Belegnummer - Eindeutige Nummer des Rechnungsbelegs / Billing Document Number - Unique number of the invoice document"
    sql: ${TABLE}.VBELN_billing_document ;;
  }
  dimension: vbtyp_document_category {
    type: string
    description: "Belegart - Kategorisierung des Belegtyps (C=Auftrag, M=Rechnung, etc.) / Document Category - Classification of document type (C=Order, M=Invoice, etc.)"
    sql: ${TABLE}.VBTYP_document_category ;;
  }
  dimension: vgbel_reference_document {
    type: string
    description: "Referenzbeleg - Verweis auf vorgelagerten Beleg in der Belegkette / Reference Document - Reference to preceding document in the document flow"
    sql: ${TABLE}.VGBEL_reference_document ;;
  }
  dimension: vgpos_reference_item {
    type: string
    description: "Referenz-Position - Positionsnummer des referenzierten Belegs / Reference Item - Item number of the referenced document"
    sql: ${TABLE}.VGPOS_reference_item ;;
  }
  dimension: vkbur_sales_office {
    type: string
    description: "Vertriebsbüro - Organisationseinheit für regionale Vertriebsaktivitäten / Sales Office - Organizational unit for regional sales activities"
    sql: ${TABLE}.VKBUR_sales_office ;;
  }
  dimension: vkorg_sales_organization {
    type: string
    description: "Verkaufsorganisation - Organisationseinheit für Vertriebsaktivitäten / Sales Organization - Organizational unit responsible for sales activities"
    sql: ${TABLE}.VKORG_sales_organization ;;
  }
  dimension: vtweg_sales_channel {
    type: string
    description: "Vertriebsweg - Kanal über den das Produkt vertrieben wird / Sales Channel - Channel through which the order is sold"
    sql: ${TABLE}.VTWEG_sales_channel ;;
  }
  dimension: waerk_document_currency {
    type: string
    description: "Belegwährung - Währungscode des ursprünglichen Belegs / Document Currency - Currency code of the original document"
    sql: ${TABLE}.WAERK_document_currency ;;
  }
  dimension: xprog_system_exit_program {
    type: string
    description: "Exit-Programm - Kundenspezifisches Erweiterungsprogramm / System Exit Program - Customer-specific enhancement program"
    sql: ${TABLE}.XPROG_system_exit_program ;;
  }
  dimension: zaehler_counter {
    type: string
    description: "Zähler (technisch) - Technischer Zähler für eindeutige Identifikation / Technical Counter - Technical counter for unique record identification"
    sql: ${TABLE}.ZAEHLER_counter ;;
  }
  measure: count {
    type: count
  }

  set: drill_fields {
    fields: [aubel_sales_document, vbeln_billing_document, erdat_creation_date, audat_document_date_calculated_date, vbtyp_document_category, vtweg_sales_channel, netwr_net_value, netwr_eur_net_value_eur, waerk_document_currency, ukurs_exchange_rate, menge_quantity, meins_base_unit_measure, order_income_calculated, revenue_calculated, credit_calculated
    ]}

  measure: total_order_income {
    label: "Total Order Income"
    type: sum
    sql: ${order_income_calculated} + ${credit_calculated} ;;
    value_format_name: eur_0
    link: {
      label: "SIS Dashboard"
      url: "/dashboards/3?Vtweg+Sales+Channel={{ _filters['sis.vtweg_sales_channel']| url_encode }}"
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
