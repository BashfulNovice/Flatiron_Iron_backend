puts "🌱 Seeding exercises..."

# Seed your database here

# muslce group seeding
back = MuscleGroup.create(name: "Back")
biceps = MuscleGroup.create(name: "Biceps")
chest = MuscleGroup.create(name: "Chest")
triceps = MuscleGroup.create(name: "Triceps")
shoulders = MuscleGroup.create(name: "Shoulders")
legs = MuscleGroup.create(name: "Legs")
core = MuscleGroup.create(name: "Core")

# exercise seeing
bench_press = Exercise.create(name: "Bench Press", muscle_group_id: chest.id)
chest_fly = Exercise.create(name: "Chest Fly", muscle_group_id: chest.id)
dumbell_press = Exercise.create(name: "Dumbell Press", muscle_group_id: chest.id)
incline = Exercise.create(name: "Incline Press", muscle_group_id: chest.id)
decline = Exercise.create(name: "Decline Press", muscle_group_id: chest.id)

curls = Exercise.create(name: "Bicep Curls", muscle_group_id: biceps.id)
cable_curls = Exercise.create(name: "Cable Curls ", muscle_group_id: biceps.id)
preacher_curls = Exercise.create(name: "Preacher Curls", muscle_group_id: biceps.id)
conecntration_curls = Exercise.create(name: "Concentration Curls", muscle_group_id: biceps.id)
drag_curls = Exercise.create(name: "Drag Curls", muscle_group_id: biceps.id)

kickbacks = Exercise.create(name: "Kickbacks", muscle_group_id: triceps.id)
skullcrushers = Exercise.create(name: "Skullcrushers", muscle_group_id: triceps.id)
cable_extensions = Exercise.create(name: "Cable Extensions", muscle_group_id: triceps.id)
overhead_extensions = Exercise.create(name: "Overhead Extensions", muscle_group_id: triceps.id)
cable_rope_pulls = Exercise.create(name: "Cable Rope Pulls", muscle_group_id: triceps.id)

pull_ups = Exercise.create(name: "Pullups", muscle_group_id: back.id)
chin_ups = Exercise.create(name: "Chinups", muscle_group_id: back.id)
cable_rows = Exercise.create(name: "Cable Rows", muscle_group_id: back.id)
barbel_rows = Exercise.create(name: "Barbell Rows", muscle_group_id: back.id)
romans = Exercise.create(name: "Romans", muscle_group_id: back.id)

millitary = Exercise.create(name: "Millitary Press", muscle_group_id: shoulders.id)
arnold_press = Exercise.create(name: "Arnold Press", muscle_group_id: shoulders.id)
lateral_rais = Exercise.create(name: "Lateral Raises", muscle_group_id: shoulders.id)
shoulder_press = Exercise.create(name: "Shoulder Press", muscle_group_id: shoulders.id)

deadlift = Exercise.create(name: "Deadlift", muscle_group_id: legs.id)
bulgarian_squats = Exercise.create(name: "Bulgarian Squats", muscle_group_id: legs.id)
side_lunges = Exercise.create(name: "Side Lunges", muscle_group_id: legs.id)
squats = Exercise.create(name: "Squats", muscle_group_id: legs.id)
leg_press = Exercise.create(name: "Leg Press", muscle_group_id: legs.id)

situps = Exercise.create(name: "Situps", muscle_group_id: core.id)
leg_raises = Exercise.create(name: "Leg Raises", muscle_group_id: core.id)
planks = Exercise.create(name: "planks", muscle_group_id: core.id)
side_planks = Exercise.create(name: "Side Planks", muscle_group_id: core.id)
russian_twists = Exercise.create(name: "Russian Twists", muscle_group_id: core.id)




puts "✅ Done seeding!"
