class User < ApplicationRecord
  has_many :pledges
  has_many :projects, through: :pledges
  validates :name, uniqueness:true
  validates :name, length: { minimum: 5 }
  validates :name, presence:true
end
