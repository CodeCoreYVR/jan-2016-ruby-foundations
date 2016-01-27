require "rack"

class ReverseApp
  def self.call(env)
    request = Rack::Request.new(env)
    params  = request.params
    reverse = params["word"].reverse
    [200, {"Content-Type" => "text/html"}, ["<h1>Reverse: #{reverse}</h1>"]]
  end
end

Rack::Handler::WEBrick.run ReverseApp

def titleize(string)
  space_index    = string.index(" ")
  reserved_world = ["in", "of", "the", "on", "from"]
  if string.squeeze == " "
    return string
  elsif space_index.nil?
    if reserved_world.include?(string)
      string
    else
      string.capitalize
    end
  else
    titleize(string[0..(space_index-1)]) + " " + titleize(string[(space_index+1)..-1])
  end
end
puts titleize("hello world")
puts titleize("the lord of the rings")
puts titleize(" ")
puts titleize("")
