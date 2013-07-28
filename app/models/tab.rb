class Tab < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
  belongs_to :tuning
  validates :title, presence: true, uniqueness: true
  validates_presence_of :body, :title, :artist, :tuning
  #validates :artist, presence: true
end
