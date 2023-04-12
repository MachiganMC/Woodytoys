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

try
{
    if ($conn = mysqli_connect($servername, $username, $password))
    {
        echo "Connected successfully";
    }
    else
    {
        throw new Exception('Unable to connect');
    }
}
catch( \Exception $ex )
{
    echo $e->getMessage();
	echo "NOT Connected successfully";
}


?>
</body>
</html>
