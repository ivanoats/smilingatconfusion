class Tuning < ActiveRecord::Base
  has_many :tabs

  validates_presence_of :name, :notes

  def display
    name + " (" + notes + ")"
  end
end
