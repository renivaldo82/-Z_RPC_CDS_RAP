@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS consumo app vendas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_RPC_VENDAS_01
  as projection on ZI_RPC_VENDAS
{
  key VendaId,
      DataVenda,
      Vendedor,
      /* Associations */
      _Item
}
