get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/home' do
	redirect '/'
end
