<?php
if ($_SERVER['REQUEST_METHOD'] !== 'POST'){
    exit();
}

$zg = $_POST['zg'];
$hg = $_POST['hg'];
$mg = $_POST['mg'];
$m  = $_POST['m'];
$ag = $_POST['ag'];
$b  = $_POST['b'];

$a = mysqli_connect('localhost', 'root', '', 'matratzenfinder');

$asdf = implode(',',$ag);
$asdfe = implode(',',$b);

$sql = <<<SQL
SELECT DISTINCT(m.ma_id),m.mattress AS `name`,m.price,m.url,m.picture
FROM mattress m
INNER JOIN haertegrade_mattress hg ON m.ma_id=hg.ma_id
INNER JOIN size_mattress sm ON m.ma_id=sm.ma_id
INNER JOIN allergy_mattress am ON am.ma_id=m.ma_id
INNER JOIN complaints_mattress cm ON cm.ma_id=m.ma_id
WHERE group_fk = {$zg} AND hg.h_id = '{$hg}' AND sm.s_id = {$mg} AND m.material_fk = {$m} AND am.a_id in ({$asdf}) AND cm.c_id in ({$asdfe}) LIMIT 4;
SQL;

$b = $a->query($sql)->fetch_all(MYSQLI_ASSOC);
echo json_encode($b);

// Todo:
// paar Namen von Variablen umändern
// Design erstellen für Haupt-Form, Ergebnis-Seite und die kein-Ergebnis-Seite
// Datenbank ergänzen um Links und Bilder