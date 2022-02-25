@AbapCatalog.sqlViewName: 'ZI04BOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional View'
@VDM.viewType: #TRANSACTIONAL

@ObjectModel: 
{
writeActivePersistence: 'sbook',

representativeKey: ['CarrID', 'ConnID'],
semanticKey: ['CarrID', 'ConnID'],

createEnabled: true,
updateEnabled: true,
deleteEnabled: true
}

define view ZI_04_Book_TP as select from ZI_04_Book 
association [1..1] to ZI_04_Customer_TP as _Customer on ZI_04_Book.Customid = _Customer.Id
{
    key Carrid,
    key Connid,
    key Fldate,
    key Bookid,
    Customid,
    Class,
    OrderDate,
    Counter,
    @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
    _Customer
}
