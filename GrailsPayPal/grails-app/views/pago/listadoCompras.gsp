<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 11/22/14
  Time: 09:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Listado de compras</title>
</head>
<body>
<table class="table table-hover">
    <thead>
    <tr>
        <th colspan="6" style="text-align: center">Listado de Compras</th>
    </tr>
    <tr>
        <th>#</th>
        <th>Factura</th>
        <th>Comprador</th>
        <th>Compra</th>
        <th>Monto</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
        <g:each in="${listaCompras}" var="compra">
            <td>${compra.id}</td>
            <td>${compra.factura}</td>
            <td>${compra.emailComprador}</td>
            <td>${compra.nombre}</td>
            <td>${compra.montoCompra}</td>
            <td>Ver detalle</td>
        </g:each>
    </tbody>
</table>
</body>
</html>