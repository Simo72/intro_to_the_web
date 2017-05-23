require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end


get '/secret' do
  "Go ahead punk make my day!"
end

get '/shed' do
  "Hell yes it'll work"
end

get '/garden' do
  "bury it"
end

get '/house' do
  "Who's in da HOUSE!!"
end

get '/car' do
  "Riding along"
end

get '/random-cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/cat-form' do #gets form, you add name and it calls '/named-cat'
end
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
