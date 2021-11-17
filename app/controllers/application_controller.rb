class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/workouts" do
    Workout.all.map{ |wo| {workout: wo, exerciese: wo.selected_exercises}}.to_json
  end

  get "/workouts/:id" do 
    workout = Workout.find(params[:id])
    exs = Workout.find(params[:id]).selected_exercises
    {workout: workout, exercieses: exs}.to_json
  end
end
