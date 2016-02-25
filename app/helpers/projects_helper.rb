module ProjectsHelper

def total_amount_raised(project)
  project.rewards.inject(0) { |sum, reward|
    sum += reward.amount * reward.pledges.count
  }
end

end
