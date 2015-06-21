<?php
	$data = "\r\n";
	
	foreach ($_POST[data] as $index => $post_item) {
		$data .= $index . ": \t" . $post_item . "\r\n";
	}
	$data .= "\r\n";
	$data .= "\r\n";
	$filename = "User-data.txt";
	file_put_contents($filename, $data , FILE_APPEND);


	$fd = fopen($filename, "r+");

	fwrite($fd, $data);

	fclose($fd);
?>
