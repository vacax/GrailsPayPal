<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 11/22/14
  Time: 09:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="template"/>
    <title>Proyecto Pago por Internet</title>
</head>
<body>
<div class="jumbotron">
    <h1>Demostración PayPal</h1>
    <p>
        Permite demostrar la integración de Paypal en nuestros proyecto de una manera sencilla.
        En este punto permitimos realizar las siguientes tareas:
    <dl>
        <dt>1) Formulario de compra</dt>
        <dd>
            Utilizando las variables HTML permite integrar nuestro formulario con Paypal.
            Una vez realizado el pago Paypal nos retorna vía llamada POST los valores de la transacción
            procesada.
        </dd>

        <dt>2) Listado de Compras</dt>
        <dd>
            Podemos visualizar todas las transacciones realizadas.
        </dd>
    </dl>
    </p>
    <p>
      Es necesario crear un usuario de tipo Negocia y Personal para ser utilizando en www.sandbox.paypal.com
    </p>
    <p>
        Para utilizar la Integración Deben compilar el Widgetset de FormSender
    </p>
    <p>
        <g:link class="btn btn-primary btn-lg" role="button" controller="pago" action="formularioPago">Ir al formulario Compra</g:link>
        <g:link class="btn btn-info btn-lg" role="button" uri="https://developer.paypal.com" target="_blank">Paypal Developer</g:link>
        <g:link class="btn btn-info btn-lg" role="button" uri="https://developer.paypal.com/webapps/developer/docs/classic/paypal-payments-standard/integration-guide/formbasics/" target="_blank">Integración Formulario</g:link>
        <g:link class="btn btn-info btn-lg" role="button" uri="https://developer.paypal.com/webapps/developer/docs/classic/paypal-payments-standard/integration-guide/Appx_websitestandard_htmlvariables/" target="_blank">Variables del Formulario</g:link>
    </p>
</div>
</body>
</html>