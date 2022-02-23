@AbapCatalog.sqlViewName: 'ZI04CUSTOMER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer Basic View'
@VDM.viewType: #BASIC
define view ZI_04_Customer as select from scustom {

    key id as Id,
    name as Name,
    street as Street,
    postcode as Postcode,
    city as City,
    country as Country,
    discount as Discount
}
