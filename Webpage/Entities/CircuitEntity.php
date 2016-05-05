<?php

class CircuitEntity {

    public  $id;
    public $nume;
    public $tara;
    public $locatie;
    public $lungime;
    public $numar_ture;
    public $nume_grand_prix;
    public $istoric;
    public $image;

    function __construct($id, $nume, $tara, $locatie, $lungime, $numar_ture, $nume_grand_prix,$istoric,$image) {
        $this->id = $id;
        $this->nume = $nume;
        $this->tara = $tara;
        $this->locatie = $locatie;
        $this->lungime = $lungime;
        $this->numar_ture = $numar_ture;
        $this->nume_grand_prix = $nume_grand_prix;
        $this->istoric = $istoric;
        $this->image = $image;

    }



}


?>
