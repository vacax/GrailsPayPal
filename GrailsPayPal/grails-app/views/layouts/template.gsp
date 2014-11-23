<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 11/22/14
  Time: 05:10 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <g:layoutTitle default="Aplicación Prueba Paypal"/>
    </title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Proyecto Compras PayPal</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><g:link controller="pago" action="index">Inicio</g:link></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Ayuda</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><g:link controller="pago" action="index">Inicio</g:link></li>
                <li><g:link controller="pago" action="formularioPago">Comprar</g:link></li>
                <li><g:link controller="pago" action="listadoCompras">Listado de Compras</g:link></li>
                <li><g:link uri="/vd/">Integración Vaadin</g:link></li>
            </ul>

        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

            <g:layoutBody/>

        </div>
    </div>
</div>


<asset:javascript src="application.js"/>
</body>
</html>