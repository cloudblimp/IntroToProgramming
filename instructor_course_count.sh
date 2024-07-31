read Instructor
echo "Number of courses taught by $Instructor :"
grep ",$Instructor," timetable.csv | wc -l
