class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project
  # accepts_nested_attributes_for :projects

  # def user_attributes=(user_attributes)
  #   self.pledges = Project.find_or_create_by(name: pledge_attributes[:username], email: user_attributes[:email]) unless user_attributes[:username].blank?
  # end
  #
  #
  # def projects_attributes=(project_attributes)
  # project_attributes.values.each do |attribute|
  #   p attribute
  #   puts "*****************************"
  #   project = Project.find_or_create_by(attribute)
  #   self.projects << project
  # end
# end

end
