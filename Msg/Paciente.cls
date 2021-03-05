/// Description
Class Shift.Msg.Paciente Extends Ens.Request
{

Property Codigo As %Integer;

Property Nome As %String(MAXLEN = 255);

Property Sexo As %String;

Storage Default
{
<Data name="PacienteDefaultData">
<Subscript>"Paciente"</Subscript>
<Value name="1">
<Value>Codigo</Value>
</Value>
<Value name="2">
<Value>Nome</Value>
</Value>
<Value name="3">
<Value>Sexo</Value>
</Value>
</Data>
<DefaultData>PacienteDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
