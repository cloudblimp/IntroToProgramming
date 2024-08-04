Room=$5

# Define the time slots for the week (up to 12:50)
Time=(
    "Monday 8:00-8:50" "Monday 9:00-9:50" "Monday 10:00-10:50" "Monday 11:00-11:50" "Monday 12:00-12:50"
    "Tuesday 8:00-8:50" "Tuesday 9:00-9:50" "Tuesday 10:00-10:50" "Tuesday 11:00-11:50" "Tuesday 12:00-12:50"
    "Wednesday 8:00-8:50" "Wednesday 9:00-9:50" "Wednesday 10:00-10:50" "Wednesday 11:00-11:50" "Wednesday 12:00-12:50"
    "Thursday 8:00-8:50" "Thursday 9:00-9:50" "Thursday 10:00-10:50" "Thursday 11:00-11:50" "Thursday 12:00-12:50"
    "Friday 8:00-8:50" "Friday 9:00-9:50" "Friday 10:00-10:50" "Friday 11:00-11:50" "Friday 12:00-12:50"
)

echo "Finding empty slots for room '$Room':"

# Check each time slot
for slot in "${Time[@]}"; do
    # Extract the day and time from the slot
    day=$(echo "$slot" | cut -d ' ' -f 1)
    time=$(echo "$slot" | cut -d ' ' -f 2-)

    # Check if the room is occupied during this time slot
    if ! grep -q "$day,$time,$Room" timetable.csv; then
        echo "$slot is empty."
    fi
done
