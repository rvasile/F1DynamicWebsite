<?php

class PilotEntity {

    public  $id;
    public $nume;
    public $prenume;
    public $nationalitate;
    public $data_nasterii;
    public $numar;
    public $pozitie_actualul_sezon;
    public $puncte_sezon;
    public $puncte_general;
    public $podiumuri;
    public $campionate_mondiale_castigate;
    public $imagine;

    function __construct($id, $nume, $prenume, $nationalitate, $data_nasterii, $numar, $pozitie_actualul_sezon, $puncte_sezon,$puncte_general , $podiumuri, $campionate_mondiale_castigate, $imagine) {
        $this->id = $id;
        $this->nume = $nume;
        $this->prenume = $prenume;
        $this->nationalitate = $nationalitate;
        $this->data_nasterii = $data_nasterii;
        $this->numar = $numar;
        $this->pozitie_actualul_sezon = $pozitie_actualul_sezon;
        $this->puncte_sezon = $puncte_sezon;
        $this->puncte_general=$puncte_general;
        $this->podiumuri= $podiumuri;
        $this->campionate_mondiale_castigate= $campionate_mondiale_castigate;
          $this->imagine = $imagine;
    }



}


?>
