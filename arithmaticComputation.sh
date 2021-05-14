#!/bin/bash -x
echo "enter the three inputs"
read a b c
result=$(($a+$b*$c))
result1=$(($a*$b+$c))
result2=$(($c+$a/$b))
echo $result
echo $result1
echo $result2
