require 'pry'

class GamesController < ApplicationController
    get '/games' do
        # retrieves all games persisted to db
            games = Game.all
        # returns a JSON response with an array of all the game data 
            games.to_json
        end
    
    post '/games' do
        # create a new game to post to the app
            game = Game.create(
                title: params[:title],
                platform: params[:platform],
                genre: params[:genre],
                price: params[:price],
            )
        # returns a JSON response with
            game.to_json
        end
    
    patch '/games/:id' do
        # accesses and updates data in body of request
            game = Game.find(params[:id])
        # will update game by calling .update method
            game.update(
                title: params[:title],
                platform: params[:platform],
                genre: params[:genre],
                price: params[:price],
            )
        # returns a JSON response with updated data
            game.to_json
        end
    
    delete '/games/:id' do
        # finds the game using the ID
            game = Game.find(params[:id])
        # deletes the game entry
            review.destroy
        # sends a JSON response with the deleted review
            review.to_json
    end
end