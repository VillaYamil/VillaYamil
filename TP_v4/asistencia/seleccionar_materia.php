<?php
// Conexión a la base de datos
try {
    $conn = new PDO('mysql:host=localhost;dbname=tp_asistencias_v4', 'root', '');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Error de conexión: " . $e->getMessage();
    exit;
}

// Obtener todas las materias
$sqlMaterias = "SELECT id, nombre FROM materia";
$stmtMaterias = $conn->query($sqlMaterias);
$materias = $stmtMaterias->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Seleccionar Materia</title>
    <link rel="stylesheet" href="../css/estilos_asistencia/seleccionar_materia.css">
</head>


</head>
<body>
    
    <form action="ver_asistencias.php" method="GET">
    <h1>Ver Asistencias por Materia</h1>
        <label for="materia_id">Selecciona una Materia:</label>
        <select name="materia_id" required>
            <?php foreach ($materias as $materia): ?>
                <option value="<?php echo $materia['id']; ?>">
                    <?php echo htmlspecialchars($materia['nombre']); ?>
                </option>
            <?php endforeach; ?>
        </select>
        <br>
        <input type="submit" value="Ver Asistencias">
    </form>
</body>
</html>