# require 'sinatra' # use the sinatra gem
# require 'sinatra/reloader'

# get '/' do
#   'Hello, world!'
# end

# get '/greet/:greeting/:name' do
#   "#{params[:greeting]}, #{params[:name]}!"
# end

# get '/greet/:name' do
#   "Hello, #{params[:name]}!"
# end


# def sign(message)

# guestbook = []

#   puts "do you want to sign the guestbook. y/n"
#   answer = gets.chomp.downcase
#   until answer == "no"
#     puts "sign here"
#     message = gets.chomp
#     guestbook << message

#     puts "Thanks come again."
# end
# p guestbook

guestbook = []

  puts "do you want to sign the guestbook?"
  answer = gets.chomp.downcase
  while answer == "yes"
    puts "sign here"
    message = gets.chomp
    guestbook << message
    puts "do you want to sign again?"
  answer = gets.chomp.downcase
end
puts "thanks for signing! Here's your saved message: #{message}"
p guestbook

# arr = ["John", "George", "Paul", "Ringo"]
# i = 0

# while arr[i]
#     puts arr[i]
#     i += 1
# end

for i in guestbook {|x| x = puts message(i)}
puts x
end

