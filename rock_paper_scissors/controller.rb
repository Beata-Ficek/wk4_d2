require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game')
require('pry')

also_reload('./models/*')

get '/:first_throw/:second_throw' do
  game = Game.new(params[:first_throw], params[:second_throw])
  @game_result = game.play
  # game.play()
  # # @winner = game.winner
  # @result = game.result
  erb :result
end

# get '/:first_throw/:second_throw' do
#   game = Game.new(params[:first_throw], params[:second_throw])
#   game.play()
#   @winner = game.winner
#   @result = game.result
#   erb :result
# end

get '/instructions' do
  erb :instructions
end

get '/about_us' do
  erb :about_us
end

get '/' do
  erb :home
end
