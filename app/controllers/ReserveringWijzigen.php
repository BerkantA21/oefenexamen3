<?php
class ReserveringWijzigen extends Controller {
    // Properties, field
    private $reserverenModel;
  
    // Dit is de constructor
    public function __construct() {
      $this->reserverenModel = $this->model('ReserverenModel');
    }
  
    public function index() {
        
        $reserveringen = $this->reserverenModel->getGewijzigdeReservering();
    
        $rows = '';
        foreach ($reserveringen as $value){
          $rows .= "<tr>
                      <td>$value->Voornaam</td>
                      <td>$value->Tussenvoegsel</td>
                      <td>$value->Achternaam</td>
                      <td>$value->Datum</td> 
                      <td>$value->AantalUren</td>
                      <td>$value->AantalVolwassen</td>
                      <td>$value->AantalKinderen</td>
                      <td>$value->PakketOptieNaam</td>
                      <td><a href='". URLROOT . "/ReserveringWijzigen/update/'>Wijzigen</a></td>
                      <td>";
        }

        $data = [
            'title' => 'Overzicht Reserveringen',
            'rows' => $rows
          ];
          $this->view('ReserveringWijzigen/index', $data);
    }
    
    public function updatePakketOptie($Id = null)
    {
        $data = [
            'Id' => $Id,
            'Naam' => 'Naam',
        ];    

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
            $data = [
                'title' => 'Voeg een opmerking',
                'Id' => $_POST['Id'],
                'Naam' => $_POST['Naam'],
            ];

            
        } 
        $this->view('ReserveringWijzigen/update', $data);
    }
    
  }