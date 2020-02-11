class SessionsController < ApplicationController
  def index
    sessions = Session.all
    render json: sessions.to_json
  end

  def create
    session = Session.create(session_params)
    render json: session
  end

  def update
    session = Session.find(params[:id])
    session.update(session_params)
    render json: session
  end
  private

  def session_params
    params.require(:session).permit(:name, :score)
  end
end
