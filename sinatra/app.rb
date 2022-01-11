require "sinatra"
require "sinatra/reloader"

get '/' do
  "Hello World"
end

get '/secret' do
  'This is a secret eeeepage!'
end

get '/cat' do
  @name = ["tom", "Simba", "Harley"].sample
  erb :index
end 