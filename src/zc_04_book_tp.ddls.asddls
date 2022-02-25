@AbapCatalog.sqlViewName: 'ZC04BOOKTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
@Metadata.allowExtensions: true

@UI.headerInfo: [{ title.value: 'Booking' , 
                   description.value: 'Booking',
                   typeName: 'Booking',
                   typeNamePlural: 'Bookings'
}]

@ObjectModel: {
createEnabled: true,
deleteEnabled: true,
updateEnabled: true
}

define view ZC_04_Book_TP as select from ZI_04_Book_TP 
association [1..1] to ZC_04_Customer_TP as _Customers 
on ZI_04_Book_TP.Customid = _Customers.Id {
    key Carrid,
    key Connid,
    key Fldate,
    key Bookid,
    Customid,
    Class,
    OrderDate,
    Counter,
    @Consumption.valueHelp: '_Customer'
    @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
    _Customers
}
