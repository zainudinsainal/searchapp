class Agency < ApplicationRecord

  has_many :blocks

  enum category: [:Financial, :Teens, :Disabilty]
end
