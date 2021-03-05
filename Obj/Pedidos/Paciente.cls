/// Description
Class Shift.Obj.Pedidos.Paciente Extends (%Persistent, %XML.Adaptor)
{

Property Codigo As %String;

Property Nome As %String;

Property Sexo As %String;

Relationship Paciente As Shift.Obj.Pedidos.Objeto [ Cardinality = parent, Inverse = ChavePaciente ];

Storage Default
{
<Data name="PacienteDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Codigo</Value>
</Value>
<Value name="3">
<Value>Nome</Value>
</Value>
<Value name="4">
<Value>Sexo</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("ChavePaciente")</DataLocation>
<DefaultData>PacienteDefaultData</DefaultData>
<IdLocation>^Shift.Obj.Pedidos.ObjetoC("ChavePaciente")</IdLocation>
<IndexLocation>^Shift.Obj.Pedidos.PacienteI</IndexLocation>
<StreamLocation>^Shift.Obj.Pedidos.PacienteS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
