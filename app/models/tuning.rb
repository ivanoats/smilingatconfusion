class Tuning < ActiveRecord::Base
  has_many :tabs

  def display
    name + " (" + notes + ")"
  end
end
