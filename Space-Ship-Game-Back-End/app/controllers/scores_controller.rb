class ScoresController < ApplicationController

  def index
    scores = Score.all
    render json: scores, include: [:user]
  end

  def create
    score = Score.create(user_id: params[:user_id], score: params[:score])
    render json: {score: score}
  end

end
