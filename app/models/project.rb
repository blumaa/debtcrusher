class Project < ApplicationRecord
  has_many :pledges
  has_many :users, through: :pledges

  def total_pledge_amount
    total = 0
    self.pledges.each do |pledge|
      total += pledge.amount.to_i
    end
    return total
  end

  def goal_or_goal_met
    if self.goal < self.total_pledge_amount
      "Original goal of #{self.goal} has been reached! Total amount over goal is #{self.total_pledge_amount - self.goal}."
    else
      self.goal
    end
  end
end
