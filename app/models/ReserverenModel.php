<?php
  class ReserverenModel {
    // Properties, fields
    private $db;
    public $helper;

    public function __construct() {
      $this->db = new Database();
    }


    public function  getReserverings()
    {
      $sql = "SELECT Persoon.Voornaam,
                     Persoon.Tussenvoegsel,
                     Persoon.Achternaam,
                     Reservering.Datum,
                     Reservering.AantalUren,
                     Reservering.AantalVolwassen,
                     Reservering.AantalKinderen,
                     ReserveringStatus.Id,
                     ReserveringStatus.Naam
              FROM Reservering
              INNER JOIN Persoon 
              ON Persoon.Id = Reservering.PersoonId

              INNER JOIN ReserveringStatus 
              ON ReserveringStatus.Id = Reservering.ReserveringStatusId
              
           
              ORDER BY Reservering.Datum DESC";
      $this->db->query($sql);
      $result = $this->db->resultSet();
      return $result;
    }
    
  
 // public function getReserveringById($Id) {
    //  $sql = "SELECT Reservering.Voornaam,
                  //   Reservering.Tussenvoegsel,
                    // Reservering.Achternaam,
                    // Reservering.Datum,
                    // Reservering.AantalUren,
                    // Reservering.AantalVolwassen,
                    // Reservering.AantalKinderen
             // FROM Reservering 
              //WHERE Id = :Id;";
     // $this->db->query($sql);
     // $this->db->bind(':Id', $Id, PDO::PARAM_INT);
     // $result = $this->db->single();
     // return $result;
  //}

}