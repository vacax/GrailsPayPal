package edu.pucmm.ia.grailspaypa.groovy.main

import com.vaadin.annotations.Theme
import com.vaadin.annotations.Title
import com.vaadin.grails.Grails
import com.vaadin.server.VaadinRequest
import com.vaadin.ui.Button
import com.vaadin.ui.FormLayout
import com.vaadin.ui.Label
import com.vaadin.ui.PasswordField
import com.vaadin.ui.TextField
import com.vaadin.ui.UI
import com.vaadin.ui.VerticalLayout
import edu.pucmm.ia.grailspaypa.domains.Parametro
import edu.pucmm.ia.grailspaypal.services.ReglasNegocioService
import org.vaadin.risto.formsender.FormSender
import org.vaadin.risto.formsender.widgetset.client.shared.Method


/**
 * Created by vacax on 11/22/14.
 */
@Theme("valo")
@Title("Paypal Integración Vaadin")
class MainUI extends UI {

    @Override
    protected void init(VaadinRequest vaadinRequest) {

        String vendedor=Grails.get(ReglasNegocioService).cuentaNegocioPaypal();

        VerticalLayout layout = new VerticalLayout()

        Label label = new Label("Prueba de Integración Vaadin - PayPal")
        layout.addComponent(label)

        //

        TextField txtFactura=new TextField("Factura: ")
        TextField txtCompra=new TextField("Nombre Compra: ")
        TextField txtMonto= new TextField("Monto: ")

        Button btnComprar=new Button("Comprar vía Paypal", new Button.ClickListener() {
            @Override
            void buttonClick(Button.ClickEvent clickEvent) {
                println("Llamando a PayPal...")
                FormSender form=new FormSender()
                form.setFormAction("https://www.sandbox.paypal.com/cgi-bin/websc");
                form.setFormMethod(Method.POST);

                //enviando los parametros.
                form.addValue("cmd", "_xclick")
                form.addValue("business", vendedor)
                form.addValue("currency_code", "USD")

                form.addValue("cbt", "Completar proceso de Compra Vaadin")
                form.addValue("rm", "2")
                form.addValue("return", "http://localhost:8080/GrailsPayPal/pago/procesarCompraPaypal")
                form.addValue("cancel_return", "http://localhost:8080/GrailsPayPal/pago/compraCancelada")

                form.addValue("invoice", txtFactura.value)
                form.addValue("item_name", txtCompra.value)
                form.addValue("amount", txtMonto.value)

                form.extend(getUI());

                form.submit();

            }
        });

        FormLayout form=new FormLayout();
        form.addComponent(txtFactura)
        form.addComponent(txtCompra)
        form.addComponent(txtMonto)
        form.addComponent(btnComprar)

        layout.addComponent(form);

        // example of how to get Grails service and call a method
        // List<User> users = Grails.get(UserService).getListOfUsers()
        //    for (User user : users) {
        //    	layout.addComponent(new Label(user.name))
        // }

        setContent(layout);
    }
}
