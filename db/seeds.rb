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

surveys.each_with_index do |index,survey|
	survey[:done_date] = Time.now + index.days
	survey[:user_id] = User.all.sample.id
	Survey.new(survey)
end
