<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 11/22/14
  Time: 04:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Formulario de Prueba</title>
</head>

<body>

<h1 class="page-header">Formulario de Compra - Paypal</h1>

<form role="form" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">

    <input type="hidden" name="cmd" value="_xclick">
    <input type="hidden" name="business" value="${cuentaNegocio}">
    <input type="hidden" name="currency_code" value="USD">

    %{-- Para uso general, tienen 256 caractares para utilizar --}%
    <input type="hidden" name="custom" value="{'param1': 'valor1', 'param2' : 'valor2'}">

    <input type="hidden" name="cbt" value="Completar proceso de Compra"> %{--  --}%
    <input type="hidden" name="rm" value="2"> %{--Indicando que haga un redirect por el metodo POST--}%
    <input type="hidden" name="return" value="${g.createLink(controller: 'pago', action: 'procesarCompraPaypal', absolute: true)}">
    <input type="hidden" name="cancel_return" value="${g.createLink(controller: 'pago', action: 'compraCancelada', absolute: true)}">

    <div class="form-group">
        <label for="invoice"># Compra:</label>
        <input type="text" class="form-control" id="invoice" name="invoice" placeholder="FA1234" required="required">
    </div>
    <div class="form-group">
        <label for="item_name">Título de Compra:</label>
        <input type="text" class="form-control" id="item_name" name="item_name" placeholder="Nombre descriptivo" required="required">
    </div>
    <div class="form-group">
        <label for="amount">Monto Total:</label>
        <input type="number" class="form-control" id="amount" name="amount" placeholder="Monto de la compra" required="required">
    </div>

    <table class="table table-hover">
        <thead>
        <tr>
            <th colspan="3" style="text-align: center">Listado de Items</th>
        </tr>
        <tr>
            <th>#</th>
            <th>Items</th>
            <th>US$</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Items #1</td>
            <td>XX</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Items #2</td>
            <td>XX</td>
        </tr>
        </tbody>
        <tfoot>
        <th></th>
        <th></th>
        <th>XXX</th>
        </tfoot>
    </table>

    <button type="submit" class="btn btn-default">Comprar vía Paypal</button>
</form>

%{--<h1>Formulario de prueba Paypal</h1>

<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
    <input type="hidden" name="cmd" value="_xclick">
    <input type="hidden" name="business" value="vendedor@iapucmm.com">
    <input type="hidden" name="item_name" value="Prueba de Compra">
    <input type="hidden" name="currency_code" value="USD">
    <input type="hidden" name="amount" value="20.00">
    <input type="image" src="http://www.paypal.com/es_XC/i/btn/x-click-but01.gif"
           name="submit"
           alt="Comprando mediante Paypal...">
</form>--}%

</body>
</html>