/// Description
Class Shift.Msg.Response.Response Extends Ens.Response
{

Property Codigo As %String;

Property Nome As %String;

Property Sexo As %String;

Property Pedido As list Of Shift.Obj.Response.Pedidos;

Storage Default
{
<Data name="ResponseDefaultData">
<Subscript>"Response"</Subscript>
<Value name="1">
<Value>Codigo</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Sexo</Value>
</Value>
<Value name="4">
<Value>Pedido</Value>
</Value>
</Data>
<DefaultData>ResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
