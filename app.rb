require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  "hello there"
  erb(:hello)
end

get("/") do
  erb(:square)
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

get("/square_root/results") do
  @num_to_root = params.fetch("root_number").to_f
  @root_result = @num_to_root ** 0.5
  erb(:sroot_results)
end

get("/random/new") do
  erb(:rng)
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @random_number = rand * (@max - @min) + @min
  erb(:rng_results)
end

get("/payment/new") do
  erb(:payment)
end


get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @years_number = params.fetch("user_years").to_i
  @principal = params.fetch("user_principal").to_f
  mpr = @apr/12/100
  number_of_payments = @years_number * 12
  calculated_payment_float = (mpr * @principal)/(1-((1+mpr) ** -number_of_payments))
  @calculated_payment = calculated_payment_float.to_fs(:currency)
  erb(:payment_results)
end
