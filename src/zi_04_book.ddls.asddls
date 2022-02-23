@AbapCatalog.sqlViewName: 'ZI04BOOK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View'
@VDM.viewType: #BASIC
define view ZI_04_Book as select from sbook {
    key carrid as Carrid,
    key connid as Connid,
    key fldate as Fldate,
    key bookid as Bookid,
    customid as Customid,
    class as Class,
    order_date as OrderDate,
    counter as Counter
}
