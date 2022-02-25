@AbapCatalog.sqlViewName: 'ZC04CUSTOMERTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
@Metadata.allowExtensions: true
@UI.headerInfo: [{ title.value: 'CustomerID' , 
                   description.value: 'BookingID',
                   typeName: 'Booking',
                   typeNamePlural: 'Bookings'
}]

@ObjectModel: 
{
transactionalProcessingDelegated: true,

createEnabled: true,
updateEnabled: true,
deleteEnabled: true
}

define view ZC_04_Customer_TP as select from ZI_04_Customer_TP
 association [1..*] to ZC_04_Book_TP as _Booking
 on _Booking.Customid = ZI_04_Customer_TP.Id
 association [1..1] to ZC_04_VALUEHelp on ZI_04_Customer_TP.City = ZC_04_VALUEHelp.city
{
    key Id,
    Name,
    Street,
    Postcode,
    @Consumption.valueHelp: 'ZC_04_VALUEHelp.city'
    City,
    Country,
    Discount,
    @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
    _Booking,
    ZC_04_VALUEHelp
}
