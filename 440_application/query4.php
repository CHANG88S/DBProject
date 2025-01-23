<?php
include 'db_connect.php';

if (isset($_GET['customer_id4']) && isset($_GET['start_date4']) && isset($_GET['end_date4'])) {
    $customer_id4 = $_GET['customer_id4'];
    $start_date4 = $_GET['start_date4'];
    $end_date4 = $_GET['end_date4'];
    $start_date4_formatted = (new DateTime($start_date4))->format('F j, Y');
    $end_date4_formatted = (new DateTime($end_date4))->format('F j, Y');

    // Get the name of the Customer we it can be posted on the echo.
    $nameQuery  = "SELECT First_name, Last_name FROM Customer WHERE Membership_id = ?";
    $stmt = $conn->prepare($nameQuery );
    $stmt->bind_param("i", $customer_id4); // Binds customer_id4 as an integer
    $stmt->execute();
    $nameResult = $stmt->get_result();

    if ($nameResult->num_rows > 0) {
        $customer = $nameResult->fetch_assoc();
        $customerName = $customer['First_name'] . " " . $customer['Last_name'];
    } else {
        $customerName = "Unknown Customer";
    }

    $sql = "SELECT T.Transaction_id, T.Transaction_time, SUM(TD.Quantity * P.Price) as Total_price
            from Transactions T
            join Transaction_Details TD on T.Transaction_id = TD.Transaction_id
            join Product P on TD.Product_id = P.Product_id
            where T.Customer_id = $customer_id4 -- PARAMETER
            and T.Transaction_time between '$start_date4' and '$end_date4' -- PARAMETER
            group by T.Transaction_id";

    $result = $conn->query($sql);

    echo "
        <style>
            body {
                background-color: #adbbda;
                color: #132463;
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
        <h1>Query 4 Results</h1>
        <h2>Checkouts completed by " . $customerName . " between " . $start_date4_formatted . " and " . $end_date4_formatted . ":</h2>";
    echo "<table>";
    echo "<tr><th>Transaction ID</th><th>Transaction Date & Time</th><th>Total Price</th></tr>";
    
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row['Transaction_id'] . "</td><td>" . $row['Transaction_time'] . "</td><td>$" . $row['Total_price'] . "</td></tr>";
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
    echo "Please provide a valid number.";
}
?>
