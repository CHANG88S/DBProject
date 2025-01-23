<?php
include 'db_connect.php';

if (isset($_GET['start_date2']) && isset($_GET['end_date2'])) {
    $start_date2 = $_GET['start_date2'];
    $end_date2 = $_GET['end_date2'];
    $start_date2_formatted = (new DateTime($start_date2))->format('F j, Y');
    $end_date2_formatted = (new DateTime($end_date2))->format('F j, Y');

    $sql = "SELECT K.Kiosk_id, SUM(TD.Quantity * P.Price) AS Total_profit
            FROM Transactions T
            JOIN Transaction_Details TD ON T.Transaction_id = TD.Transaction_id
            JOIN Product P ON TD.Product_id = P.Product_id
            JOIN Kiosk K ON T.Kiosk_id = K.Kiosk_id
            WHERE T.Transaction_time BETWEEN '$start_date2' AND '$end_date2'
            GROUP BY K.Kiosk_id
            ORDER BY Total_profit DESC";

    $result = $conn->query($sql);

    echo "
        <style>
            body {
                background-color: #7091e6;
                color: #ede8f5;
            }
            table {
                border-collapse: collapse;
            }
            th, td {
                padding: 10px; 
                text-align: center;
                border: 3px solid black; 
            }
        </style>";


    echo "
        <h1>Query 2 Results</h1>
        <h2>Kiosks that made the post profit between " . $start_date2_formatted . " & " . $end_date2_formatted . ":</h2>";
    echo "<table>";
    echo "<tr><th>Kiosk ID</th><th>Total Profit</th></tr>";
    
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row['Kiosk_id'] . "</td><td>$" . $row['Total_profit'] . "</td></tr>";
        }
    } else {
        echo "<tr><td colspan='3'>No results found</td></tr>";
    }

    echo "</table><br>";

    echo
        "<form method='GET' action='index.html'>
        <button type='submit'>Return Home</button>
        </form>";

    $conn->close();
} else {
    echo "Please provide a valid date range.";
}
?>
