@AbapCatalog.sqlViewName: 'ZI04BOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional View'
@VDM.viewType: #TRANSACTIONAL
define view ZI_04_Book_TP as select from ZI_04_Book {
    key Carrid,
    key Connid,
    key Fldate,
    key Bookid,
    Customid,
    Class,
    OrderDate,
    Counter
}
