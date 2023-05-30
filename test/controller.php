<?php
if ($_SERVER['REQUEST_METHOD'] !== 'POST'){
    exit();
}

$target = $_POST['target'];
$hardness = $_POST['hardness'];
$size = $_POST['size'];
$material  = $_POST['material'];
$allergy = $_POST['allergy'];
$complaints  = $_POST['complaints'];

$a = mysqli_connect('localhost', 'root', '', 'matratzenfinder');

$selectAllergy = '';

if ($allergy) {
    $selectAllergy = 'AND am.a_id in('.implode(',', $allergy).')';
}

$sql = <<<SQL
SELECT DISTINCT(m.ma_id),m.mattress AS `name`,m.price,m.url,m.picture
FROM mattress m
INNER JOIN haertegrade_mattress hg ON m.ma_id=hg.ma_id
INNER JOIN size_mattress sm ON m.ma_id=sm.ma_id
INNER JOIN allergy_mattress am ON am.ma_id=m.ma_id
INNER JOIN complaints_mattress cm ON cm.ma_id=m.ma_id
WHERE group_fk = {$target} AND hg.h_id = '{$hardness}' AND sm.s_id = {$size} AND m.material_fk = {$material} AND cm.c_id = {$complaints} {$selectAllergy} LIMIT 4;
SQL;

$b = $a->query($sql)->fetch_all(MYSQLI_ASSOC);
echo json_encode($b);
// Todo:
// paar Namen von Variablen umändern
// Design erstellen für Haupt-Form, Ergebnis-Seite und die kein-Ergebnis-Seite
// Datenbank ergänzen um Links und Bilder