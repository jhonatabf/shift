/// Description
Class Shift.Msg.Pedido Extends Ens.Request
{

Property Codigo As %String;

Property OrdemServico As %Integer;

Storage Default
{
<Data name="PedidoDefaultData">
<Subscript>"Pedido"</Subscript>
<Value name="1">
<Value>Codigo</Value>
</Value>
<Value name="2">
<Value>OrdemServico</Value>
</Value>
</Data>
<DefaultData>PedidoDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
