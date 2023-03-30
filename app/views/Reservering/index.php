<?php 
    require APPROOT  .'/views/includes/head.php';
 ?>
<h3><u><?= $data['title']; ?><button type="submit">Verstuur</button></u></h3><br>

<table border=1>
    <thead>
        <th>Voornaam</th>
        <th>Tussenvoegsel</th>
        <th>Achternaam</th>
        <th>Reserveringsdatum</th>
        <th>Uren</th>
        <th>Volwassenen</th>
        <th>Kinderen</th>
        <th>Status</th>
    </thead>
    <tbody>
        <?= $data['rows']; ?>
    </tbody>
</table>
</br>
<a href="<?= URLROOT;?>/homepages/index">home</a>
<?php require APPROOT  .'/views/includes/footer.php'; ?>