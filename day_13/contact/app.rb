require "sinatra"
require "sinatra/reloader"
require "pony"
require "./mail_sender.rb"

enable :sessions
use Rack::MethodOverride

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Please enter correct credentials"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

get "/" do
  session[:count] = (session[:count] || 0) + 1
  puts "name is #{@name}"
  erb :index, layout: :application
end

post "/contact" do
  session[:name] = params[:full_name]
  MailSender.send(params)
  params.to_s
end

get "/special" do
  protected!
  "You're reached a special page!"
end

get "/test_redirect" do
  @name = "Tam"
  redirect to("/")
end

post "/" do
  session[:color] = params[:background_color]
  # erb :index, layout: :application
  # this will redirect back to the page you came from
  redirect back
end

delete "/remove_bg" do
  session[:color] = nil
  redirect back
end
