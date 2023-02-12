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

$sql = <<<SQL
SELECT *
FROM mattress m
INNER JOIN haertegrade_mattress hg ON m.ma_id=hg.ma_id
INNER JOIN size_mattress sm ON m.ma_id=sm.ma_id
WHERE group_fk = {$zg} AND hg.h_id = '{$hg}' AND sm.s_id = {$mg} AND m.material_fk = {$m};
SQL; //nächsten Sonntag: bei Allergien weitermachen (Array-Abfrage)

$b = $a->query($sql)->fetch_all(MYSQLI_ASSOC);
echo json_encode($b);