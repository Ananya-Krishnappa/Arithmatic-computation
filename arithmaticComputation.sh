#!/bin/bash -x
declare -A resultsOfArith
arithResults=()
echo "enter the three inputs"
read a b c
result=$(($a+$b*$c))
result1=$(($a*$b+$c))
result2=$(($c+$a/$b))
result3=$((a%b+c))
echo $result
echo $result1
echo $result2
echo $result3
resultOfArith[result]=$result
resultOfArith[result1]=$result1
resultOfArith[result2]=$result2
resultOfArith[result3]=$result3
for values in ${resultOfArith[@]}
do
	arithResults+=($values)
done
echo ${arithResults[@]}
sorted=($(sort  <<<"${arithResults[@]}"))
echo "sorted array in ascending order is" ${sorted[@]}
