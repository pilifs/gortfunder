module RewardsHelper
  def checkIfBacked(reward)
    if reward.pledges.where(user: current_user).count > 0
      "backed"
    else
      "unbacked"
    end
  end
end
