Instructor=$4

# Output the header
echo "Room, Day, Count"

# Use awk to count the courses by room and day for the specified instructor
grep "$Instructor" timetable.csv | awk -F ',' '{count[$5", "$1]++} END {for (i in count) print i", "count[i]}' | sort
