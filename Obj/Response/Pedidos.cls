/// Description
Class Shift.Obj.Response.Pedidos Extends (%SerialObject, %XML.Adaptor)
{

Property Pedido As %Integer;

Property OrdemServico As %String;

Property Exames As list Of Shift.Obj.Response.Exames;

Storage Default
{
<Data name="PedidosState">
<Value name="1">
<Value>Pedido</Value>
</Value>
<Value name="2">
<Value>OrdemServico</Value>
</Value>
<Value name="3">
<Value>Exames</Value>
</Value>
</Data>
<State>PedidosState</State>
<StreamLocation>^Shift.Obj.Response.PedidosS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
