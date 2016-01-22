require "rack"

class MyApp
  def self.call(env)
    # puts env

    # this will take the `env` objects and parses it into a request object
    # that is easier to get data from. So we can get things like the params
    req = Rack::Request.new(env)
    puts req.params

    # we must return an array of three elements
    # first element: status code. (200 is for ok)
    # second element: HTTP Header information
    # third element: Array of content for the body
    [200, {"Content-Type" => "text/html"}, ["<h1>Hello World and Hello #{req.params['name']}</h1>"]]
  end
end

# MyApp has to have a method `.call` that takes a single argument
# you can use a class, proc or lambda
Rack::Handler::WEBrick.run MyApp
