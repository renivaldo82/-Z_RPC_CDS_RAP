@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIEW ENTITY BASIC ITENS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_RPC_VENDAS_IT
  as select from ztrpcvendasit
{
  key venda_id   as VendaId,
  key venda_item as VendaItem,
      produto_id as ProdutoId,
      quantidade as Quantidade
}
