/// Description
Class Shift.BS.Request Extends (%CSP.REST, Ens.BusinessService)
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
	<Route Url="/v1/pedidos" Method="POST" Call="pedidos"/>
</Routes>
}

ClassMethod pedidos() As %Status
{
	Set tSC = $$$OK
	
	Try {
	
		Set %response.ContentType = "application/json"
		Set dados = ##class(Ens.Director).CreateBusinessService("Shift.BS.Request",.pServico)
		
	    Set tPayloadRaw = $ZCONVERT(%request.Content.Read(), "I", "UTF8")
		Set tPayload = ##class(%DynamicAbstractObject).%FromJSON(tPayloadRaw)
			
		Set pRequest = ##class(Shift.Msg.Request).%New()
		Set pRequest.Identificador 		    = tPayload.identificador
		
		Set tSC = pServico.Roteador("Shift.BO.Cache",pRequest,.output)
		$$$ThrowOnError(tSC)
		
		If ($isobject(output))
		{
			Do ##class(%ZEN.Auxiliary.jsonProvider).%ObjectToJSON(output,,0,"ueal")
		}
		Else
		{
			Throw ##class(%Exception.General).%New("Response failure",401,,"There's a problem with BP response")
		}
	
	} Catch ex {		
		Do ..ReportHttpStatusCode(500,tSC)
		$$$LOGERROR(ex.DisplayString())
	}
	
	Quit tSC
}

Method Roteador(target As %String, input As %Stream.Object, Output output As %Stream.Object) As %Status
{
 
	Quit ..SendRequestSync(target, input, .output, 120)
}

}
