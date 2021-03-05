Class Shift.Obj.Request.Paciente Extends (%SerialObject, %XML.Adaptor)
{

Property Codigo As %Integer;

Property Nome As %String(MAXLEN = 255);

Property Sexo As %String;

Storage Default
{
<Data name="PacienteState">
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
<State>PacienteState</State>
<StreamLocation>^Shift.Obj.Request.PacienteS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
