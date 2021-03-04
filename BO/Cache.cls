Class Shift.BO.Cache Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method SalvaPedidos(pInput As Shift.Msg.Request, Output pOutput As Shift.Msg.Response) As %Status
{
        $$$TRACE("Indentificador: "_pInput.Identificador)
        Set pOutput = ##class(Shift.Msg.Response).%New()

        Set pedidos = ##class(Shift.Obj.Pedidos.Objeto).%New()

        Set pedidos.Identificador = pInput.Identificador

        Set tSC = pedidos.%Save()
        Set pOutput.status = 1

        Quit tSC
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="Shift.Msg.Request">
        <Method>SalvaPedidos</Method>
    </MapItem>
</MapItems>
}

}
