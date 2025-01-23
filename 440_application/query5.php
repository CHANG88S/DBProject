<?php
include 'db_connect.php';

if (isset($_GET['kiosk_id5']) && isset($_GET['shift_date5'])) {
    $kiosk_id5 = $_GET['kiosk_id5'];
    $shift_date5 = $_GET['shift_date5'];
    $shift_date5_formatted = (new DateTime($shift_date5))->format('F j, Y');

    $sql = "SELECT W.First_name, W.Last_name, KS.Start_time, KS.End_time
            from Worker_Kiosk_Shift KS
            join Worker W on KS.Worker_id = W.Worker_id
            where KS.Shift_date = '$shift_date5' -- PARAMETER";

    $result = $conn->query($sql);

    echo "
        <style>
            body {
                background-color: #ede8f5;
                color: #3d52a0;
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
        <h1>Query 5 Results</h1>
        <h2>Worker(s) that worked on Kiosk #" . $kiosk_id5 . " on " . $shift_date5_formatted . ":</h2>";
    echo "<table>";
    echo "<tr><th>First Name</th><th>Last Name</th><th>Start Time</th><th>End Time</th></tr>";
    
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row['First_name'] . "</td><td>" . $row['Last_name'] . "</td><td>" . $row['Start_time'] . "</td><td>" . $row['Start_time'] . "</td></tr>";
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
