<?php

class EchipaEntity {

    public  $id;
    public $denumire;
    public $rank;
    public $tara;
    public $an_infiintare;
    public $short_den;
    public $image;


    function __construct($id, $denumire, $short_den, $rank, $tara, $an_infiintare,$image) {
        $this->id = $id;
        $this->denumire = $denumire;
        $this->rank = $rank;
        $this->tara = $tara;
        $this->an_infiintare = $an_infiintare;
        $this->short_den = $short_den;
        $this->image=$image;

    }



}


?>
