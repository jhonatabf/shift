/// Description
Class Shift.Obj.Pedidos.Objeto Extends (%Persistent, %XML.Adaptor)
{

Property Identificador As %String;

Relationship ChavePedido As Shift.Obj.Pedidos.Pedido [ Cardinality = children, Inverse = Pedido ];

Relationship ChavePaciente As Shift.Obj.Pedidos.Paciente [ Cardinality = children, Inverse = Paciente ];

Relationship ChaveExame As Shift.Obj.Pedidos.Exame [ Cardinality = children, Inverse = Exame ];

Storage Default
{
<Data name="ObjetoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Identificador</Value>
</Value>
</Data>
<DataLocation>^Shift.Obj.Pedidos.ObjetoD</DataLocation>
<DefaultData>ObjetoDefaultData</DefaultData>
<IdLocation>^Shift.Obj.Pedidos.ObjetoD</IdLocation>
<IndexLocation>^Shift.Obj.Pedidos.ObjetoI</IndexLocation>
<StreamLocation>^Shift.Obj.Pedidos.ObjetoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
