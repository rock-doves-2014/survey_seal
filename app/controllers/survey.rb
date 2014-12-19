get '/survey/:id' do |id|
  @survey = Survey.find_by('id = ?', id)
  @questions = @survey.questions
  @answers = {}
  @questions.each do |question|
     @answers[question.id]= question.answers
  end
    erb :"/surveys/single", locals: {survey: @survey, answers: @answers, questions: @questions }
end

get '/survey/new' do
  erb :"surveys/new"
end

post '/survey/new' do
  survey = Survey.new(params[:survey])
  survey.user_id = current_user.id
  survey.save
  redirect ("/survey/#{survey.id}")
end

get '/survey/:id/edit' do |id|
  @survey = Survey.find_by('id = ?', id)
  erb :"/surveys/#{id}/edit", locals: {survey: @survey}
end

put '/survey/:id/edit' do |id|
  survey = Survey.find_by('id = ?', id)
  survey.update(params[:survey])
  redirect ("/survey/#{survey.id}")
end

delete '/survey/:id' do |id|
  survey = Survey.find_by('id = ?', id)
  survey.destroy
  redirect ("/")
end








