/// Description
Class Shift.Obj.Request.Exames Extends (%SerialObject, %XML.Adaptor)
{

Property Codigo As %Integer;

Property Descricao As %String(MAXLEN = 255);

Storage Default
{
<Data name="ExamesState">
<Value name="1">
<Value>Codigo</Value>
</Value>
<Value name="2">
<Value>Descricao</Value>
</Value>
</Data>
<State>ExamesState</State>
<StreamLocation>^Shift.Obj.Request.ExamesS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
