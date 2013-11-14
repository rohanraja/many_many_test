json.array!(@meals) do |meal|
  json.extract! meal, :name, :price, :mealtime, :mealday, :mealindex, :enrolled_no_of_students, :time
  json.url meal_url(meal, format: :json)
end
