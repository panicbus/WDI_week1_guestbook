require 'sinatra'
require 'sinatra/reloader'

get '/subtract/:first_num/:second_num' do
  result = params[:first_num].to_i - params[:second_num].to_i
  result.to_s
end

get '/add/:first_num/:second_num' do
  result = params[:first_num].to_i + params[:second_num].to_i
  result.to_s
end

get '/multiply/:first_num/:second_num' do
  result = params[:first_num].to_i * params[:second_num].to_i
  result.to_s
end

get '/divide/:first_num/:second_num' do
  begin
  result = params[:first_num].to_i / params[:second_num].to_i
  result.to_s
  rescue ZeroDivisionError
    "You divided by zero!"
end
end

get '/multiply/:first_num/:second_num' do
  result = params[:first_num].to_f * params[:second_num].to_f
  result.to_s
end
# # => 1.1


get '/add/*' do
  numbers = params[:splat][0].split("/")
  total = numbers.shift.to_i
   numbers.each do |num|
    total += num.to_i
  end
  "the answer is: #{total}"
end
# => "the answer is 15"


