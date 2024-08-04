Room=$1

# List all courses held in the specified room
echo "Courses held in room '$Room':"
grep -w "$Room" timetable.csv | awk -F',' '{print $3}' | uniq
