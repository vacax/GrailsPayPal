package edu.pucmm.ia.grailspaypa.controllers

import edu.pucmm.ia.grailspaypa.domains.Compra
import edu.pucmm.ia.grailspaypa.domains.Parametro

class PagoController {

    def index() { }

    /**
     * Formulario de pago para las pruebas
     */
    def formularioPago(){
        String cuentaNegocio=Parametro.findByCodigo(Parametro.CUENTA_NEGOCIO_PAYPAL).valor;

        [cuentaNegocio: cuentaNegocio]
    }

    /**
     * Recibe la información callback de Paypal
     */
    def procesarCompraPaypal(){
        println("Compra realizada con exito.")
        println("Parametro recibido: "+params)

        //Recibiendo los valores de Paypal.
        Compra compra=new Compra();
        compra.factura=params.invoice;
        compra.transaccion=params.txn_id;
        compra.nombre=params.item_name;
        compra.estatusPago=params.payment_status;

        compra.montoCompra=new BigDecimal(params.payment_gross);
        compra.montoImpuesto=new BigDecimal(params.tax);
        compra.montoManejo=new BigDecimal(params.handling_amount);
        compra.montoFee=new BigDecimal(params.payment_fee);
        compra.montoEnvio=new BigDecimal(params.shipping);

        compra.compradorId=params.payer_id;
        compra.emailComprador=params.payer_email;
        compra.fechaCompra=new Date();
        compra.vendedor=params.business;

        compra.ciudad=params.address_city;
        compra.zip=params.address_zip;
        compra.estado=params.address_state;
        compra.direccion=params.address_name;

        compra.save(failOnError: true);

        redirect(action: 'compraRealizada', id: compra.id);

    }

    /**
     *
     */
    def compraCancelada(){
        println("Compra cancelada")
        render params;
    }

    /**
     * Representa la compra procesada
     * @param id
     */
    def compraRealizada(long id){

        def compra = Compra.get(id);

        [compra : compra]
    }

    /**
     *
     */
    def listadoCompras(){
        def listaCompras = Compra.list(order: 'desc', sort: 'fechaCompra');
        [listaCompras : listaCompras]
    }
}
