@AbapCatalog.sqlViewName: 'ZC04BOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View'
@VDM.viewType: 'Consumption'
define view ZC_04_Book_TP as select from ZI_04_Book_TP 
association [1] to ZC_04_Customer_TP as _Customer on _Customer.Id  = ZI_04_Book_TP.Customid {
    key Carrid,
    key Connid,
    key Fldate,
    key Bookid,
    Customid,
    Class,
    OrderDate,
    Counter,
    _Customer
}
