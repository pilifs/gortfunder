class PledgesController < ApplicationController

  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user = current_user

    if @pledge.save
      render 'create.js'
    else
      render '/projects'
    end

  end

  private

  def pledge_params
    params.require(:pledge).permit(:reward_id)
  end
end
