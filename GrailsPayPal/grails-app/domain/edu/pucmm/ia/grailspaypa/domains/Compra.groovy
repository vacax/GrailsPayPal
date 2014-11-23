package edu.pucmm.ia.grailspaypa.domains

class Compra {

    String nombre;
    String factura;
    String transaccion;
    String estatusPago

    BigDecimal montoCompra;
    BigDecimal montoFee;
    BigDecimal montoEnvio;
    BigDecimal montoImpuesto;
    BigDecimal montoManejo;

    String compradorId;
    String emailComprador;
    Date fechaCompra;
    String vendedor;

    String direccion;
    String zip;
    String estado;
    String ciudad;


    static constraints = {
    }
}
