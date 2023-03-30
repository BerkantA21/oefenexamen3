<?php 
    require APPROOT  .'/views/includes/head.php';
 ?>
<h3><u><?= $data['title']; ?></u></h3>

<table border=1>
    <thead>
        <th>Voornaam</th>
        <th>Tussenvoegsel</th>
        <th>Achternaam</th>
        <th>datum</th>
        <th>Volwassenen</th>
        <th>Kinderen</th>
        <th>Optiepakket</th>
        <th>Wijzigen</th>
    </thead>
    <tbody>
        <?= $data['rows']; ?>
    </tbody>
</table>
</br>
<a href="<?= URLROOT;?>/homepages/index">home</a>
<?php require APPROOT  .'/views/includes/footer.php'; ?>