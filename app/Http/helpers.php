<?php

if (! function_exists('add_string')) {
    function add_string($str1, $str2 = null) {
        return $str1. ' '. $str2; 
    }
}

if (! function_exists('pr')) {
    function pr($arr) {
        echo '<pre>'; print_r($arr);
    }
}