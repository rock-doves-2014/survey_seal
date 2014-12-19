users = [{name: 'peter', email: 'peter.jahnes@gmail.com', password_digest: 123},
	{name: 'carl', email: 'carl.schubert@gmail.com', password_digest: 123},
	{name: 'ashley', email: 'ashley.baldwinhunter@gmail.com', password_digest: 123},]

users.each do |user|
	User.create(user)
end

surveys = [
	{title: "icecreams", done_date: nil, user_id: nil},
	{title: "cars", done_date: nil, user_id: nil},
	{title: "vacations", done_date: nil, user_id: nil},
	{title: "shoe styles", done_date: nil, user_id: nil},
	{title: "musics", done_date: nil, user_id: nil}
	]

surveys.each_with_index do |survey, index|
	survey[:done_date] = Time.now + index.days
	survey[:user_id] = User.all.sample.id
	Survey.create(survey)
end

50.times do
	Question.create(survey_id: rand(4)+1, question: Faker::Lorem.sentence)
end

for i in (1..50)
	4.times do
		Answer.create(question_id: i, answer: Faker::Lorem.word)
	end
end

10.times do
	SurveyUser.create(user_id: rand(1..3), survey_id: rand(1..5))
end


