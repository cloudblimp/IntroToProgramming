Course=$1
echo "Timetable for a Specific Course '$Course': "
grep "$Course" timetable.csv
