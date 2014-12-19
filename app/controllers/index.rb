get '/' do
  @surveys = Survey.all
	erb :index
end

get '/about' do
	erb :about
end

