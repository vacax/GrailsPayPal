<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 11/22/14
  Time: 08:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Compra realizada Exito</title>
</head>

<body>
<div class="jumbotron">
    <h1>Gracias por su compra</h1>
    <p>Su compra #${compra.factura}, Transacción #${compra.transaccion} será entregada a la brevedad posible a la siguiente direccion:</p>
    <p>
    <address>
        <strong>${compra.direccion}</strong><br>
        ${compra.ciudad} ${compra.zip}<br>
        ${compra.estado}<br>
    </address>
    </p>
    <p><g:link class="btn btn-primary btn-lg" role="button" action="formularioPago"> Realizar otra compra</g:link></p>
</div>
</body>
</html>