@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS composta de vendas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_RPC_VENDAS
  as select from ZR_RPC_VENDAS
  association [1..*] to ZR_RPC_VENDAS_IT as _Item on $projection.VendaId = _Item.VendaId
{
  key VendaId,
      DataVenda,
      Vendedor,
      _Item
}
