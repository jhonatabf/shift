/// Description
Class Shift.BO.Request.Response Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method BuscarExames(pInput As Shift.Msg.Response.Request, Output pOutput As Shift.Msg.Response.Response) As %Status
{
	Set pOutput = ##class(Shift.Msg.Response.Response).%New()
	
    Set tRS = ##class(EnsLib.SQL.Snapshot).%New()
	Set tSql = "SELECT Paciente, ID, Codigo, Nome, Sexo, childsub FROM Shift_Obj_Pedidos.Paciente"
	Set result=##class(%ResultSet).%New("%DynamicQuery:SQL")

	Set sc=result.Prepare(tSql)  
	    Set sc=result.Execute() 
	    
	    While result.Next(.sc) {
				Set pOutput.Codigo = tRS.Get("Codigo")
                Set pOutput.Nome = tRS.Get("Nome")
                Set pOutput.Sexo = tRS.Get("Sexo")
				}
	
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="Shift.Msg.Response.Request"> 
		<Method>BuscarExames</Method>
	</MapItem>
</MapItems>
}

}
