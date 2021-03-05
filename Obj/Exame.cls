/// Description
Class Shift.Obj.Exame Extends (%SerialObject, %XML.Adaptor)
{

Property Codigo As %Integer;

Property Descricao As %String(MAXLEN = 255);

Storage Default
{
<Data name="ExameState">
<Value name="1">
<Value>Codigo</Value>
</Value>
<Value name="2">
<Value>Descricao</Value>
</Value>
</Data>
<State>ExameState</State>
<StreamLocation>^Shift.Obj.ExameS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
