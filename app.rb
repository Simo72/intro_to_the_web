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

get '/cat' do
  @names = ["Amigo", "Oscar", "Viking"]
  erb :index
end
