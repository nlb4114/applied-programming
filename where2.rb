require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  @lat = rand(-90.000000..90.000000)
  @long = rand(-180.000000...180.000000)
  @lat_long = "#{@lat}, #{@long}"
  view "where2"
end