json.array!(@choices) do |choice|
  json.extract! choice, :student_id, :ch_array, :time, :total
  json.url choice_url(choice, format: :json)
end
