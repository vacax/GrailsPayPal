package edu.pucmm.ia.grailspaypal.services

import edu.pucmm.ia.grailspaypa.domains.Parametro
import grails.transaction.Transactional

@Transactional
class ReglasNegocioService {

   public String cuentaNegocioPaypal(){
       return Parametro.findByCodigo(Parametro.CUENTA_NEGOCIO_PAYPAL).valor;
   }
}
