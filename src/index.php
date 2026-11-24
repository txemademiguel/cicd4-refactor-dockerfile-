<?php
// Fija la zona horaria a Europa/Madrid para coincidir con tu localización.
date_default_timezone_set('Europe/Madrid');

echo "<h1>Hola Mundo desde Docker Compose!</h1>";
echo "<p>Fecha y hora actuales: " . date('Y-m-d H:i:s') . "</p>";
?>
