require "sinatra"
require "faker"

# this enables us to change the content of this file without having to restart
# the server. This depends on `sinatra-contrib` gem
require "sinatra/reloader"

# get "/" do
#   "<h1>Hello World</h1>"
# end

get "/" do
  # this will render a template views/index.erb and sends it
  # as a response (this is a Sinatra convention)
  # erb is a ruby method (built-in with Sinatr) that takes in a first arguement
  # which is a symbol that references a file name
  # erb(:index)
  erb(:index, {layout: :app_layout})
  # erb :index, {layout: :app_layout}
  # erb :index, layout: :app_layout
end

get "/about" do
  "About My Website"
end

get "/greeting" do
  # Sinatra gives us access to all the GET and POST parameters with a Hash
  # called params
  # you're able to access the values with symbols or strings
  # so if your URL is: http://localhost:4567/greeting?name=Tam&city=Burnaby
  # params will be: {"name" => "Tam", "city" => "Burnaby"}
  # you can access the value of name with:
  # params[:name] or params["name"]
  @name = params[:name]
  # making @name an instance variable enables us to access it in the erb template

  # "Hello #{name}"
  erb :greeting, {layout: :app_layout}
end

# this is a dynamic url. It will match /greeting/anything
# for example: /greeting/john or /greeting/hello
get "/greeting/:name" do |name|
  "Hello #{name} or Hello #{params[:name]}"
end

get "/company" do
  erb(:company, {layout: :app_layout})
end

# This will not conflict with the action above because this one is a POST
# request while the above is a GET request. The combination of VERB / URL must
# be unique
post "/company" do
  @phrase = Faker::Company.bs
  erb(:company, {layout: :app_layout})
end

get "/convert" do
  erb :convert, layout: :app_layout
end

post "/convert" do
  @c = params[:temp_in_c]
  @f = params[:temp_in_c].to_f * 9 / 5 + 32
  erb :convert, layout: :app_layout
end
