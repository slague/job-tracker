class Category < ActiveRecord::Base
  has_many :jobs

  validates :title, presence: true, uniqueness: true
end
