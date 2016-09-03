class UsersController < ApplicationController

  def index
    @highest_scores = sort_by_score(Game.group(:user_id).maximum(:score))
    @users = User.find(@highest_scores.keys)
    add_high_scores_to(@users)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def sort_by_score(scores)
    scores.sort_by { |k, v| -v }.to_h
  end

  def add_high_scores_to(users)
    users.each { |user| user.high_score = @highest_scores[user.id] }
  end
end
