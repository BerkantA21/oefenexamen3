<?php
/**
 * Hieronder de studentscontroller
 */

class Reservation extends Controller
{
    // Properties
    private $studentModel;

    // De constructor voor het aanmaken van een modelobject
    public function __construct()
    {
        $this->studentModel = $this->model('Reservations');
    }

    public function index($message = NULL)
    {
        var_dump("ik ben bij resviation index");
        exit();
        // De view wordt aangeroepen
        $this->view('reservation/index');
    }

    


    
}


