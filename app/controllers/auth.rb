get '/login' do
  erb :'auth/login'
end

get '/signup' do
  erb :'auth/signup'
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

post '/login' do
  user = User.find_by(name: params[:user][:name])

  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

post '/signup' do
  User.create(params[:user])
  redirect '/'
end
