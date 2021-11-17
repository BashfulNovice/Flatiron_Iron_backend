Exercise.destroy_all
SelectedExercise.destroy_all
Workout.destroy_all

puts "🌱 Seeding exercises..."

# Seed your database here



# exercise seeing
bench_press = Exercise.create(name: "Bench Press", muscle_group: "chest")
chest_fly = Exercise.create(name: "Chest Fly", muscle_group: "chest")
dumbell_press = Exercise.create(name: "Dumbell Press", muscle_group: "chest")
incline = Exercise.create(name: "Incline Press", muscle_group: "chest")
decline = Exercise.create(name: "Decline Press", muscle_group: "chest")

curls = Exercise.create(name: "Bicep Curls", muscle_group: "biceps")
cable_curls = Exercise.create(name: "Cable Curls ", muscle_group: "biceps")
preacher_curls = Exercise.create(name: "Preacher Curls", muscle_group: "biceps")
conecntration_curls = Exercise.create(name: "Concentration Curls", muscle_group: "biceps")
drag_curls = Exercise.create(name: "Drag Curls", muscle_group: "biceps")

kickbacks = Exercise.create(name: "Kickbacks", muscle_group: "triceps")
skullcrushers = Exercise.create(name: "Skullcrushers", muscle_group: "triceps")
cable_extensions = Exercise.create(name: "Cable Extensions", muscle_group: "triceps")
overhead_extensions = Exercise.create(name: "Overhead Extensions", muscle_group: "triceps")
cable_rope_pulls = Exercise.create(name: "Cable Rope Pulls", muscle_group: "triceps")

pull_ups = Exercise.create(name: "Pullups", muscle_group: "back")
chin_ups = Exercise.create(name: "Chinups", muscle_group: "back")
cable_rows = Exercise.create(name: "Cable Rows", muscle_group: "back")
barbel_rows = Exercise.create(name: "Barbell Rows", muscle_group: "back")
romans = Exercise.create(name: "Romans", muscle_group: "back")

millitary = Exercise.create(name: "Millitary Press", muscle_group: "shoulders")
arnold_press = Exercise.create(name: "Arnold Press", muscle_group: "shoulders")
lateral_rais = Exercise.create(name: "Lateral Raises", muscle_group: "shoulders")
shoulder_press = Exercise.create(name: "Shoulder Press", muscle_group: "shoulders")

deadlift = Exercise.create(name: "Deadlift", muscle_group: "legs")
bulgarian_squats = Exercise.create(name: "Bulgarian Squats", muscle_group: "legs")
side_lunges = Exercise.create(name: "Side Lunges", muscle_group: "legs")
squats = Exercise.create(name: "Squats", muscle_group: "legs")
leg_press = Exercise.create(name: "Leg Press", muscle_group: "legs")

situps = Exercise.create(name: "Situps", muscle_group: "core")
leg_raises = Exercise.create(name: "Leg Raises", muscle_group: "core")
planks = Exercise.create(name: "planks", muscle_group: "core")
side_planks = Exercise.create(name: "Side Planks", muscle_group: "core")
russian_twists = Exercise.create(name: "Russian Twists", muscle_group: "core")

#Example Workouts to load
puts 'generating example workouts...'
example_back_workout = Workout.create(name: "generic back", date: "11-29-2021", rest: false)
SelectedExercise.create(name: pull_ups.name, sets: 3, reps: 5, workout_id: example_back_workout.id, exercise_id: pull_ups.id)
SelectedExercise.create(name: cable_rows.name, sets: 3, reps: 10, workout_id: example_back_workout.id, exercise_id: cable_rows.id)
SelectedExercise.create(name: romans.name, sets: 3, reps: 15, workout_id: example_back_workout.id, exercise_id: romans.id)

example_chest_workout = Workout.create(name: "generic chest", date: "11-30-2021", rest: false)
SelectedExercise.create(name: bench_press.name, sets: 3, reps: 10, workout_id: example_chest_workout.id, exercise_id: bench_press.id)
SelectedExercise.create(name: incline.name, sets: 3, reps: 10, workout_id: example_chest_workout.id, exercise_id: incline.id)
SelectedExercise.create(name: dumbell_press.name, sets: 3, reps: 10, workout_id: example_chest_workout.id, exercise_id: dumbell_press.id)

example_leg_workout = Workout.create(name: "generic legs", date: "12-01-2021", rest: false)
SelectedExercise.create(name: deadlift.name, sets: 3, reps: 5, workout_id: example_leg_workout.id, exercise_id: deadlift.id)
SelectedExercise.create(name: squats.name, sets: 3, reps: 10, workout_id: example_leg_workout.id, exercise_id: squats.id)
SelectedExercise.create(name: bulgarian_squats.name, sets: 3, reps: 15, workout_id: example_leg_workout.id, exercise_id: bulgarian_squats.id)



puts "✅ Done seeding!"
