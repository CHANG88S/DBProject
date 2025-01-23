<?php
include 'db_connect.php';

if (isset($_GET['department']) && isset($_GET['stock_limit'])) {
    $department = $_GET['department'];
    $stock_limit = $_GET['stock_limit'];

    $sql = "SELECT 
                P.Product_name,
                P.Department,
                I.Stock_amount,
                I.Restock_amount,
                I.Last_restock_date,
                W.First_name AS Worker_First_Name,
                W.Last_name AS Worker_Last_Name
            FROM 
                Inventory I
            JOIN 
                Product P ON I.Product_id = P.Product_id
            JOIN 
                Worker W ON I.Worker_id = W.Worker_id
            WHERE 
                I.Last_restock_date IS NOT NULL
                AND I.Stock_amount < $stock_limit -- Parameter
                AND P.Department = '$department' -- Parameter
            ORDER BY 
                I.Last_restock_date DESC";


    $result = $conn->query($sql);

    echo "
        <style>
            body {
                background-color: #3d52a0;
                color: #ede8f5;
            }
            table {
                border-collapse: collapse;
            }
            th, td {
                padding: 10px; 
                text-align: center;
                border: 3px solid #132463; 
            }
        </style>";


    echo "
        <h1>Query 6 Results</h1>
        <h2>Products under the " . $department . " department below " . $stock_limit . " and stocked by the corresponding worker(s):</h2>";
    echo "<table>";
    echo "<tr><th>Product Name</th><th>Department</th><th>Stock Amount</th><th>Restock Amount</th><th>First Name</th><th>Last Name</th></tr>";
    
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row['Product_name'] . "</td><td>" . $row['Department'] . "</td><td>" . $row['Stock_amount'] . "</td><td>" . $row['Restock_amount'] . "</td><td>" . $row['Worker_First_Name'] . "</td><td>" . $row['Worker_Last_Name'] . "</td></tr>";
        }
    } else {
        echo "<tr><td colspan='4'>No results found</td></tr>";
    }

    echo "</table><br>";

    echo
        "<form method='GET' action='index.html'>
        <button type='submit'>Return Home</button>
        </form>";

    $conn->close();
} else {
    echo "Please provide a valid number.";
}
?>
