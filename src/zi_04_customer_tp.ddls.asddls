@AbapCatalog.sqlViewName: 'ZI04CUSTOMERTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer Transactional Processing'
@VDM.viewType: #TRANSACTIONAL
define view ZI_04_Customer_TP as select from ZI_04_Customer {
    key Id,
    Name,
    Street,
    Postcode,
    City,
    Country,
    Discount
}
