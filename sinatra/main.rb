
require 'sinatra'
require 'sinatra/reloader'

@title = "Calculator"

get '/subtract/:first_num/:second_num' do
  @result = params[:first_num].to_i - params[:second_num].to_i
  @result.to_s

  erb :myview
end

# get '/greet/:name' do
#   @title = "Greeter"
#   @name = params[:name].capitalize
#   @wish = "Hello, "

#   erb :myview
# end

# get '/goodbyer/:name' do
#   @title = "Goodbye-er"
#   @name = params[:name].capitalize
#   @wish = "Goodbye, "

#   erb :myview
# end

