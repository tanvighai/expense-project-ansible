total=$(free | grep Mem | awk '{ print $2 }')

free=$(free | grep Mem | awk '{ print $4 }')
used=$(free | grep Mem | awk '{ print $3 }')

used-percentage=$(echo "$used / $total * 100" | bc -l | awk -F ,  '{print$1}')
echo $used-percentage

if [ $used-percentage -lt 50 ]; then
  echo Mem is green
elif [ $used-percentage -lt 70 ]; then
  echo Mem is Orange
else
  echo Mem is Red
fi
