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

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string_to_say = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " +params[:word5] + "."
    "#{@string_to_say}"
  end

end
