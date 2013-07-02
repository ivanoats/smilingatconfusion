class Tab < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
