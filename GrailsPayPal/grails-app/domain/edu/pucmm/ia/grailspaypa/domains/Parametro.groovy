package edu.pucmm.ia.grailspaypa.domains

class Parametro {

    public static final int CUENTA_NEGOCIO_PAYPAL=1000;

    int codigo;
    String nombre;
    String valor;

    static constraints = {
       codigo(unique: true)
    }
}
