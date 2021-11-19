class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #Workout Routs
  get "/workouts" do
    Workout.all.map{ |wo| {workout: wo, exercises: wo.selected_exercises}}.to_json
  end

  get "/workouts/:id" do 
    workout = Workout.find(params[:id])
    exs = Workout.find(params[:id]).selected_exercises
    {workout: workout, exercises: exs}.to_json
  end

  delete "/workouts/:id" do
    workout = Workout.find(params[:id])
    workout.destroy
    workout.to_json
  end

  post "/workouts" do
    workout = Workout.create(
      name: params[:workout]['name'],
      date: params[:workout]['date'],
      rest: params[:workout]['rest']
    )
    params[:exes].each do |ex|
      SelectedExercise.create(
        name: ex['name'],
        sets: ex['sets'],
        reps: ex['reps'],
        exercise_id: ex['exercise_id'],
        workout_id: workout.id
      )
    end
    {workout: workout, exercises: workout.selected_exercises}.to_json
  end

  patch "/workouts/:id" do
    to_update = Workout.find(:params[:id])
    to_update.update(
      name: params[:name],
      date: params[:date],
      rest: params[:rest]
    )
    to_update.to_json
  end

# Selected exercise routs

  get "/selectedexercises" do
    SelectedExercise.all.to_json
  end

  get "/selctedexercises/:id" do
    SelectedExercise.find(params[:id]).to_json
  end

  delete "/selctedexercises/:id" do
    ex = SelectedExercise.find(params[:id])
    ex.destroy
    ex.to_json
  end

  post "/selectedexercises" do
    ex = SelectedExercise.create(
      name: params[:name],
      sets: params[:sets],
      reps: params[:reps],
      workout_id: params[:workout_id],
      exercise_id: params[:exercise_id]
    )
    ex.to_json
  end

  #and just in case we decide to add exercises from the front end
  post "/exercises" do
    new_ex = Exercise.create(
      name: params[:name],
      muscle_group: params[:muscle_group]
    )
    new_ex.to_json
  end

  get "/exercises" do
    Exercise.all.to_json
  end
 
  delete "/exercises/:id" do
    to_remove = Exercise.find(:params[:id])
    to_remove.destroy
    to_remove.to_json
  end

end
