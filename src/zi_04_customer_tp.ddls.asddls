@AbapCatalog.sqlViewName: 'ZI04CUSTOMERTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer Transactional Processing'
@VDM.viewType: #TRANSACTIONAL

@ObjectModel: {

transactionalProcessingEnabled: true,
compositionRoot: true,
writeActivePersistence: 'scustom',

modelCategory: #BUSINESS_OBJECT,
representativeKey: ['ID', 'name'],
semanticKey: ['ID', 'name'],

createEnabled: true,
updateEnabled: true,
deleteEnabled: true
}

define view ZI_04_Customer_TP as select from ZI_04_Customer
association [*] to ZI_04_Book_TP as _Booking on ZI_04_Customer.Id = _Booking.Customid 
 {
    key Id,
    Name,
    Street,
    Postcode,
    City,
    Country,
    Discount,
    @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
    _Booking
}
