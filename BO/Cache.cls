Class Shift.BO.Cache Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method SalvaPedidos(pInput As Shift.Msg.Request, Output pOutput As Shift.Msg.Response) As %Status
{
        $$$TRACE("Indentificador: "_pInput.Identificador)
        Set pOutput = ##class(Shift.Msg.Response).%New()

        Set pessoa = ##class(Shift.Obj.Pedidos.Objeto).%New()
        Set pessoa.Identificador = pInput.Identificador
        Set tSC = pessoa.%Save()

        Set pedido = ##class(Shift.Obj.Pedidos.Pedido).%New()
        Set pedido.Codigo       = pInput.Identificador_""_pInput.Pedido.OrdemServico
        Set pedido.OrdemServico = $PIECE($HOROLOG,",")_""_$PIECE($HOROLOG,",",1)
        Set pedido.Pedido       = pessoa
        Set tSC = pedido.%Save()

        Set paciente = ##class(Shift.Obj.Pedidos.Paciente).%New()
        Set paciente.Nome       = pInput.Paciente.Nome
        Set paciente.Codigo     = pInput.Paciente.Codigo
        Set paciente.Sexo       = pInput.Paciente.Sexo
        Set paciente.Paciente   = pessoa
        Set tSC = paciente.%Save()
        
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
