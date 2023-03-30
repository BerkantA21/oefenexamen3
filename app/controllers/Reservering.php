<?php
class Reservering extends Controller {
    // Properties, field
    private $reserverenModel;
  
    // Dit is de constructor
    public function __construct() {
      $this->reserverenModel = $this->model('ReserverenModel');
    }
  
    public function index() {
      /**
       * Haal alle reserveringen op uit de model
       */
      $reserveringen = $this->reserverenModel->getReserverings();

      /**
       * Maak tabelrijen van de opgehaalde data over de reserveringen
       */
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
                    <td>$value->Naam</td>
              
                  </tr>";
      }
      
      /**
       * Stuur de informatie door naar de view
       */
      $data = [
        'title' => 'Overzicht Reserveringen',
        'rows' => $rows
      ];
      $this->view('/Reservering/index', $data);
    }     
    
  }