require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  "hello there"
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @num_to_square = params.fetch("users_number").to_f
  @square_result = @num_to_square ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:sroot)
end

get("/random/new") do
  erb(:rng)
end

get("payment/new") do
  erb(:payment)
end
