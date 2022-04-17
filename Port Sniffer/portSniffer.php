<?php
ini_set('max_execution_time', 0);
ini_set('memory_limit', -1);

$host = readline('Enter Host: ');
//$ports = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 25, 80, 81, 90, 68, 69, 110, 143, 443, 587, 2525, 3306);

foreach (range(0, 10000) as $port)
{
    $connection = @fsockopen($host, $port, $errno, $errstr, 2);

    if (is_resource($connection))
    {
        echo '' . $host . ':' . $port . ' ' . '(' . getservbyport($port, 'tcp') . ') is open. 🟢' . "\n";

        fclose($connection);
    }
    else
    {
        echo '' . $host . ':' . $port . ' is not responding. 🔴' . "\n";
    }
}
?>
