class Tab < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
  belongs_to :tuning
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  #validates :artist, presence: true
end
