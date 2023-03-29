<?php 
    require APPROOT  .'/views/includes/head.php';
 ?>
<h3><u><?= $data['title']; ?></u></h3><br>
<h5>Overzicht Reserveringen</h5><br>

<table>
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
<a href="<?= URLROOT;?>/homepages/index">home</a>
<?php require APPROOT  .'/views/includes/footer.php'; ?>