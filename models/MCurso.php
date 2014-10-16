<?php
class Curso
{
    public $nombreCurso;
    public $idCurso;
    public $fechaInicio;
    public $fechaFinal;
    public $idInstructor;
    public $horaInicio;
    public $horaFinal;
    
    public function __construct($nombreCurso = 'nn', $idCurso = 0, $fechaInicio = 'nn', $fechaFinal = 'nn') {
        $this->nombreCurso = $nombreCurso;
        $this->idCurso = $idCurso;
        $this->fechaInicio = $fechaInicio;
        $this->fechaFinal = $fechaFinal;
    }
    
    public function nombreCurso() {
        return $this->nombreCurso;
    }
}
?>