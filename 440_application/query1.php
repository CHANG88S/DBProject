<?php
include 'db_connect.php';

if (isset($_GET['start_date1']) && isset($_GET['end_date1'])) {
    $start_date1 = $_GET['start_date1'];
    $end_date1 = $_GET['end_date1'];
    $start_date1_formatted = (new DateTime($start_date1))->format('F j, Y');
    $end_date1_formatted = (new DateTime($end_date1))->format('F j, Y');

    $sql = "SELECT C.First_name, C.Last_name, SUM(TD.Quantity * P.Price) AS Total_spent
            FROM Transactions T
            JOIN Transaction_Details TD ON T.Transaction_id = TD.Transaction_id
            JOIN Product P ON TD.Product_id = P.Product_id
            JOIN Customer C ON T.Customer_id = C.Membership_id
            WHERE T.Transaction_time BETWEEN '$start_date1 00:00:00' AND '$end_date1 23:59:59'
            GROUP BY C.Membership_id
            ORDER BY Total_spent DESC";

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
                border: 3px solid black; 
            }
        </style>";


    echo "
        <h1>Query 1 Results</h1>
        <h2>Customers who spent the most between " . $start_date1_formatted . " & " . $end_date1_formatted . ":</h2>";
    echo "<table>";
    echo "<tr><th>First Name</th><th>Last Name</th><th>Total Spent</th></tr>";
    
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row['First_name'] . "</td><td>" . $row['Last_name'] . "</td><td>$" . $row['Total_spent'] . "</td></tr>";
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
