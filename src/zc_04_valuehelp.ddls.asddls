@AbapCatalog.sqlViewName: 'ZC04VALUEH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Value Helper'
define view ZC_04_VALUEHelp as select from scustom {
    key city,
    name
}
