<?php
include 'db_connect.php';

if (isset($_GET['customer_id3'])) {
    $customer_id3 = $_GET['customer_id3'];

    // Get the name of the Customer we it can be posted on the echo.
    $nameQuery  = "SELECT First_name, Last_name FROM Customer WHERE Membership_id = ?";
    $stmt = $conn->prepare($nameQuery );
    $stmt->bind_param("i", $customer_id3); // Binds customer_id3 as an integer
    $stmt->execute();
    $nameResult = $stmt->get_result();

    if ($nameResult->num_rows > 0) {
        $customer = $nameResult->fetch_assoc();
        $customerName = $customer['First_name'] . " " . $customer['Last_name'];
    } else {
        $customerName = "Unknown Customer";
    }

    $sql = "SELECT P.Product_name, TD.Quantity, P.Price, (TD.Quantity * P.Price) as Total_price
            from Transactions T
            join Transaction_Details TD on T.Transaction_id = TD.Transaction_id
            join Product P on TD.Product_id = P.Product_id
            where T.Customer_id = $customer_id3 -- PARAMETER
            and T.Transaction_id = (
                select MAX(Transaction_id)
                from Transactions
                where Customer_id = $customer_id3 -- PARAMETER
            )";

    $result = $conn->query($sql);

    echo "
        <style>
            body {
                background-color: #8697c3;
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
        <h1>Query 3 Results</h1>
        <h2>Products bought by " . $customerName . " at their most recent checkout:</h2>";
    echo "<table>";
    echo "<tr><th>Product</th><th>Quantity</th><th>Single Price</th><th>Total Price</th></tr>";
    
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row['Product_name'] . "</td><td>" . $row['Quantity'] . "</td><td>$" . $row['Price'] . "</td><td>$" . $row['Total_price'] . "</td></tr>";
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
