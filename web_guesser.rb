require 'sinatra'
require 'sinatra/reloader'


secret_number = rand(0..100)

get '/' do
p "The secret number is #{secret_number}"
end
