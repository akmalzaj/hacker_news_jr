enable :sessions

get '/login' do
	erb :login
end

get '/logout' do
	session.clear
	redirect '/'
end

get '/hacker_news' do
	erb :hacker_news
end

post '/hacker_news' do
	@user = User.authenticate(params[:user][:name], params[:user][:password])
	if @user
		session[:user_id] = @user.id
		redirect '/hacker_news'
	else
	redirect '/login'
	@login_errors = "Authentication failed. Check your details and try again"
	end
end

get '/signup' do
	erb :login
end

post '/signup' do
	usr = User.find_by(name: params[:user][:name])
    if usr.nil?
        @user = User.create(params[:user])
        redirect '/login'
        @msg = "Successfully signup. Please login."
    else
        @signup_errors = "Email is already in the system. Try another email"
        redirect '/signup'
    end
end