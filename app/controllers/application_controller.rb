class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #Workout Routs
  get "/workouts" do
    Workout.all.map{ |wo| {workout: wo, exerciese: wo.selected_exercises}}.to_json
  end

  get "/workouts/:id" do 
    workout = Workout.find(params[:id])
    exs = Workout.find(params[:id]).selected_exercises
    {workout: workout, exercieses: exs}.to_json
  end

  delete "workouts/:id" do
    workout = Workout.find(params[:id])
    workout.destroy
    workout.to_json
  end

  post "/workouts" do
    workout = Workout.create(
      name: params[:name],
      date: params[:date],
      rest: params[:rest]
    )
    workout.to_json
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



end
