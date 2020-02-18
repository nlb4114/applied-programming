require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

# get "/" do
#   "Hello"
# end

get "/" do
    @d1 = rand(1..6)
    @d2 = rand(1..6)
    # roll = d1 + d2
    view "dice"
end
# if roll == 7 || roll == 11
#     "WINNER!"
# elsif roll == 2 || roll == 3 || roll == 12
#     "YOU LOSE!"
# elsif roll == 1 || roll == 4 || roll == 5 || roll == 6 || roll == 8 || roll == 9 || roll == 10
#     "THE POINT IS #{roll}"
# end

