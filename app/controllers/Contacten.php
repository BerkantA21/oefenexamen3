<?php

class Contacten extends Controller
{
    // properties
    private $ContactModel;

    // dit is de constructor van de controller
    public function __construct()
    {
        $this->ContactModel = $this->model('Contact');
    }

    public function index($land = 'Nederland', $age = 22)
    {
        $records = $this->ContactModel->getContacten();
        //var_dump($records);

        $rows = '';

        foreach ($records as $items)
        {
            $rows .= "<tr>
                        <td>$items->Id</td>
                        <td>$items->Name</td>
                        <td>$items->CapitalCity</td>
                        <td>$items->Continent</td>
                        <td>$items->Population</td>
                        <td><a href='" . URLROOT . "/contacten/update/$items->Id'>Update</a></td>
                        <td><a href='" . URLROOT . "/contacten/delete/$items->Id'>Delete</a></td>
                    </tr>";
        }

        $data = [
            'title' => "Overzicht landen",
            'rows' => $rows,
            'Hallo' => "Hallo",
            'description' => "Hier kan je een overzicht van informatie vinden van allemaal verschillende landen,<br> Je kan hier de populatie, hoofdstad en land vinden. <br> Zo kan je meer informatie opdoen over andere landen",
            'onzin' => "Dit is een onzinnig stukje tekst"
        ];

        $this->view('contacten/index', $data);
    }
}