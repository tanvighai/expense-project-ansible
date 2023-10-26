total=$( free | grep Mem | awk '{ print $2 }' )

free=$( free | grep Mem | awk '{ print $4 }' )

free-percentage=$(echo "$free / $total * 100" | bc -l | awk -F ,  '{print$1}')
echo"free_percentage"