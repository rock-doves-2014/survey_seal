
post '/user_answers' do


  params[:answers].values.each do |ans|
    answer_id = ans.to_i
    user_answers = UserAnswer.new()
    user_answers.answer_id = answer_id
    user_answers.user_id = session[:user_id]
    user_answers.question_id = Answer.find(answer_id).question_id
    user_answers.survey_id = Question.find(Answer.find(answer_id).question_id).survey_id
    user_answers.save
  end
  redirect "/"
end
