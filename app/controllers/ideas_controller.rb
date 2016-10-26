class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    puts Idea.where(id:4).first
  end

  def create
    @user = User.find(session[:user_id])
    if @user.ideas.create(idea_params)
      redirect_to '/bright_ideas'
    else
      flash[:errors] = @user.ideas.errors.full_messages
      redirect_to '/'
    end
  end

  def new
  end

  def edit
  end

  def show
    @idea = Idea.where(id: params[:id]).first
  end

  def update
  end

  def destroy
    idea = Idea.find(params[:id])
    idea.destroy if idea.user == current_user
    redirect_to "/bright_ideas"
  end

  private
  def idea_params
    params.require(:idea).permit(:content)
  end
end
