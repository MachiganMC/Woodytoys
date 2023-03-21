<html>
<head>
<title>Test PHP</title>
</head>
<body>
<?php
echo "a";
$servername = "192.168.0.3";
$username = "root";
$password = "root";
// Create connection
$conn = new MySQLi($servername, $username, $password);
// Check connection
if ($conn -> connect_error) {;
echo "NOT Connected successfully";;
}
echo "Connected successfully";
?>
</body>
</html>