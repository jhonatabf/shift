/// Description
Class Shift.Obj.Pedidos.Exame Extends (%Persistent, %XML.Adaptor)
{

Property Codigo As %Integer;

Property Descricao As %String;

Relationship Exame As Shift.Obj.Pedidos.Objeto [ Cardinality = parent, Inverse = ChaveExame ];

Storage Default
{
<Data name="ExameDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Codigo</Value>
</Value>
<Value name="3">
<Value>Descricao</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("ChaveExame")</DataLocation>
<DefaultData>ExameDefaultData</DefaultData>
<IdLocation>^Shift.Obj.Pedidos.ObjetoC("ChaveExame")</IdLocation>
<IndexLocation>^Shift.Obj.Pedidos.ExameI</IndexLocation>
<StreamLocation>^Shift.Obj.Pedidos.ExameS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
