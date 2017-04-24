require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "Secret message"
end

get '/secret/verybigsecret' do
  "This is a very big secret"
end

get '/secret/random-dog' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb :index
end

get '/secret/named-dog' do
  @name = params[:name]
  erb :index
end

post '/secret/named-dog' do
  @name = params[:name]
  p params
  erb :index
 end
