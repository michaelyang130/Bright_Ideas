class LikesController < ApplicationController
before_action :require_login, only: [:create, :destroy]
  def create
  	idea = Idea.find(params['idea_id'])

  	like = Like.create(user: current_user, idea: idea)
  	redirect_to '/bright_ideas'
  end

  def destroy
  end
end
