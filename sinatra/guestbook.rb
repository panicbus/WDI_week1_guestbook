require 'sinatra'
require 'sinatra/reloader'

@title = "Guestbook"



get '/guestbook/:messages' do
 @messages = params[:messages]

 @storage = [].join(' ')


  @welcome = "Please sign the guestbook!"
  @post = params[:post]

  @storage << @post

@thanks = "Thanks for signing! Below is your saved message:"

@credits = "Guestbook brought to you by Po Boy McGee."

  erb :myview
end

# <p>
# <ul>
#   <% @storage.each do |x| %>
#     <li><% x %></li>
#   <% end %>
# </ul>
