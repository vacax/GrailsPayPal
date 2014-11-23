import edu.pucmm.ia.grailspaypa.domains.Parametro

class BootStrap {

    def init = { servletContext ->
        println("Inicializando la aplicación Prueba Paypal")
        println("Creando la cuenta de negocio de paypal")

        //Cuenta que estará recibiendo el pago.
        Parametro.findByCodigo(Parametro.CUENTA_NEGOCIO_PAYPAL)!= null ? "" : new Parametro(codigo: Parametro.CUENTA_NEGOCIO_PAYPAL, nombre: "CUENTA_NEGOCIO_PAYPAL", valor: "vendedor@iapucmm.com").save(failOnError: true)
    }
    def destroy = {
    }
}
