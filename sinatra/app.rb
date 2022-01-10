require "sinatra"
require "sinatra/reloader"

get '/' do
  "Hello World"
end

get '/secret' do
  'This is a secret eeeepage!'
end

get '/cat' do
  erb(:index)
end 