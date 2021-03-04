/// Description
Class Shift.Obj.Pedidos.Pedido Extends (%Persistent, %XML.Adaptor)
{

Property Codigo As %String(MAXLEN = 9999);

Property OrdemServico As %Integer;

Relationship Pedido As Shift.Obj.Pedidos.Objeto [ Cardinality = parent, Inverse = ChavePedido ];

Storage Default
{
<Data name="PedidoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Codigo</Value>
</Value>
<Value name="3">
<Value>OrdemServico</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("ChavePedido")</DataLocation>
<DefaultData>PedidoDefaultData</DefaultData>
<IdLocation>^Shift.Obj.Pedidos.ObjetoC("ChavePedido")</IdLocation>
<IndexLocation>^Shift.Obj.Pedidos.PedidoI</IndexLocation>
<StreamLocation>^Shift.Obj.Pedidos.PedidoS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
