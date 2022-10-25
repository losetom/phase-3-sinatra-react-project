class UsersController < ApplicationController
    post '/users' do
        user = User.create(params)
        user.to_json
    end
end