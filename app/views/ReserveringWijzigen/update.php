<?php require APPROOT . '/views/includes/head.php'; ?>

<h3><?= $data['title']; ?></h3>
<form action="<?= URLROOT; ?>/ReserveringWijzigen/update" method="post">
<label for="naam">Details Optiepakket</label>
    <input type="hidden" name="Id" value="<?= $data['Id']; ?>">
    <input type="hidden" name="Id" value="<?= $data['Naam']; ?>">
    <input type="submit" value="Sla Op">
</form>

<a href="<?= URLROOT;?>/homepages/index">home</a>
<?php require APPROOT  .'/views/includes/footer.php'; ?>