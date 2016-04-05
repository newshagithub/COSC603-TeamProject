json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :name, :reading, :quizQuestions, :quizAnswers, :lesson_id
  json.url lecture_url(lecture, format: :json)
end
