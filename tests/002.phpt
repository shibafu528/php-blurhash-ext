--TEST--
blurhash_test1() Basic test
--SKIPIF--
<?php
if (!extension_loaded('blurhash')) {
	echo 'skip';
}
?>
--FILE--
<?php
$ret = blurhash_test1();

var_dump($ret);
?>
--EXPECT--
The extension blurhash is loaded and working!
NULL
