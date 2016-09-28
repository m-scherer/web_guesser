require 'sinatra'
require 'sinatra/reloader'
SECRET_NUMBER = rand(100)


def check_guess(guess)
  number = SECRET_NUMBER
  if guess.to_i > number + 5
    p "Way too high!"
  elsif guess.to_i < number - 5
    p "Way too low!"
  elsif guess.to_i > number
    p "Too high!"
  elsif guess.to_i < number
    p "Too low!"
  elsif guess.to_i == number
    p "You got it right!"
  end
end

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}
end
