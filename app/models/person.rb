class Person < ApplicationRecord
  belongs_to :program

  def full_name
    first_name + " " +last_name
  end
end
