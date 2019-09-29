class PledgesController < ApplicationController

  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.save
    redirect_to @pledge.project
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount, :user_id, :project_id)
  end

end
