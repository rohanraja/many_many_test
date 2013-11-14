json.array!(@students) do |student|
  json.extract! student, :rollno, :name, :email, :phoneno, :department, :year
  json.url student_url(student, format: :json)
end
