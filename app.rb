require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @number_square = params[:number].to_i * params[:number].to_i
    "#{@number_square.to_s}"
  end

  get "/say/:number/:phrase" do
    @string_to_say = params[:phrase] * params[:number].to_i
    "#{@string_to_say}"
  end

end
