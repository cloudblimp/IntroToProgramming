today=$(date +%A)
echo "Schedule for $today: "
grep "^$today", timetable.csv

