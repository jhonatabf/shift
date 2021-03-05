/// Description
Class Shift.Msg.Request Extends Ens.Request
{

Parameter RESPONSECLASSNAME As %String = "Shift.Msg.Response";

Property Identificador As %String;

Property Pedido As Shift.Msg.Pedido;

Property Paciente As Shift.Obj.Request.Paciente;

Property Exames As Shift.Obj.Request.Exames;

Storage Default
{
<Data name="RequestDefaultData">
<Subscript>"Request"</Subscript>
<Value name="1">
<Value>Identificador</Value>
</Value>
<Value name="2">
<Value>Pedido</Value>
</Value>
<Value name="3">
<Value>Paciente</Value>
</Value>
<Value name="4">
<Value>Exames</Value>
</Value>
</Data>
<DefaultData>RequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
