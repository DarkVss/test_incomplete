<?php
/**
 * Value swapping in array - element with index $position and first element
 *
 * @param $array array
 * @param $position integer
 */
function array_swap(&$array, $position = 0)
{
    if (is_array($array) === true) {
        if (isset($array[$position]) == true && $position != 0) {
            $temp = $array[0];
            $array[0] = $array[$position];
            $array[$position] = $temp;
        }
    }
}

$array = array(4, 5, 8, 9, 1, 7, 2);

echo "<p>Start array</p><pre>" . print_r($array, true) . "</pre>";

$lastIndex = count($array) - 1;
$index = $lastIndex;

while ($index > 0) {
    $currentCompare = $array[$index] < $array[0];
    $prevCompare = $array[$index] < $array[$index - 1];
    if ($currentCompare || $prevCompare) {
        array_swap($array, $currentCompare ? $index : $index - 1);
        $index = $lastIndex;
    } else {
        $index--;
    }
}

echo "<p>End array</p><pre>" . print_r($array, true) . "</pre>";