class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  def current_user
    User.find_or_create_by(id: params[:user_id])
  end

end