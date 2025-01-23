<?php
// Include the database connection
include 'db_connect.php';

// Get the table name from the query parameter
$table = $_GET['table'] ?? null;

// Validate table name to prevent SQL injection
$allowedTables = ['customer', 'worker', 'kiosk', 'product', 'inventory', 'transactions', 'worker_kiosk_shift']; // Add your allowed table names here
if (!in_array($table, $allowedTables)) {
    echo "Invalid table name.";
    exit;
}

// Fetch table data
$sql = "SELECT * FROM $table";
$result = $conn->query($sql);

// Generate table HTML
if ($result->num_rows > 0) {
    echo "<br> <table>";
    echo "<thead><tr>";
    while ($field = $result->fetch_field()) {
        echo "<th>{$field->name}</th>";
    }
    echo "</tr></thead><tbody>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach ($row as $cell) {
            echo "<td>{$cell}</td>";
        }
        echo "</tr>";
    }
    echo "</tbody></table>";
} else {
    echo "No data found in the table.";
}

// Close connection
$conn->close();
?>
