<?php
  class ReserverenModel {
    // Properties, fields
    private $db;
    public $helper;

    public function __construct() {
      $this->db = new Database();
    }


    public function getReserveringen() {
      $sql = "SELECT  Reservering.Voornaam
                     ,Reservering.Tussenvoegsel
                     ,Reservering.Achternaam
                     ,Reservering.Datum
                     ,Reservering.AantalUren
                     ,Reservering.AantalVolwassen
                     ,Reservering.AantalKinderen
                      ,Reservering.ReserveringStatusId
              FROM `Reservering` 
              ORDER BY Datum DESC;";
      $this->db->query($sql);
      $result = $this->db->resultSet();
      return $result;
    }

    public function getReserverenById($Id) 
    {
        $sql = "SELECT  Reservering.Voornaam
                     ,Reservering.Tussenvoegsel
                     ,Reservering.Achternaam
                     ,Reservering.Datum
                     ,Reservering.AantalUren
                     ,Reservering.AantalVolwassen
                     ,Reservering.AantalKinderen
                        FROM Reservering 
                        WHERE Id = :Id;";
        $this->db->query($sql);
        $this->db->bind(':Id', $Id, PDO::PARAM_INT);
        $result = $this->db->single();
        return $result;
    }

}