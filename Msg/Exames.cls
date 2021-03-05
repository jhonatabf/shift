/// Description
Class Shift.Msg.Exames Extends Ens.Request
{

Property Exame As list Of Shift.Obj.Exame;

Storage Default
{
<Data name="ExamesDefaultData">
<Subscript>"Exames"</Subscript>
<Value name="1">
<Value>Exame</Value>
</Value>
</Data>
<DefaultData>ExamesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
