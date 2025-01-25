require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  @num_to_square = params.fetch("squaring").to_i
  erb(:square)
end

get("/square_root/new")
  erb(:sroot)
end

get("/random/new")
  erb(:rng)
end

get("payment/new")
  erb(:payment)
end
