require "sinatra"
require "sinatra/reloader"

get '/' do
  "Hello World"
end

get '/secret' do
  'This is a secret page!'
end

get '/random-cat' do
  @name = ["Tom", "Simba", "Harley"].sample
  erb :index
end 

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end 

get '/cat-form' do
  erb :cat_form
end 