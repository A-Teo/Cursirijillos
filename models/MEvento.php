<?php

class Evento {
    
    public $nombreEvento;
    public $idEvento;
    public $fechaInicio;
    public $fechaFinal;
    
    public function __construct($nombreEvento = 'nn', $idEvento = 0, $fechaInicio = 'nn', $fechaFinal = 'nn') {
        $this->nombreEvento = $nombreEvento;
        $this->idEvento = $idEvento;
        $this->fechaInicio = $fechaInicio;
        $this->fechaFinal = $fechaFinal;
    }
    
    public function nombre() {
        return $this->nombreEvento;
    }
    
    public function get_Eventos() {
        $evento1 = new Evento('SIS 2', 123, '11/7/2014','11/9/2014');
        
        $list = array($evento1, $evento2);
        return $list;
    }
} 

?>