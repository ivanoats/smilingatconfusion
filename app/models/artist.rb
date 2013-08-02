class Artist < ActiveRecord::Base
  has_many :tabs
  validates_presence_of :name
end
