@AbapCatalog.sqlViewName: 'ZC04CUSTOMERTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View'
@VDM.viewType: #CONSUMPTION
define view ZC_04_Customer_TP as select from ZI_04_Customer_TP
association [1..*] to ZC_04_Book_TP as _Bookings 
on _Bookings.Customid = ZI_04_Customer_TP.Id {
    key Id,
    Name,
    Street,
    Postcode,
    City,
    Country,
    Discount,
    _Bookings
}
