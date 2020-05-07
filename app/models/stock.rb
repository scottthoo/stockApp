class Stock < ApplicationRecord
  belongs_to :user
  validates :ticker ,presence: true
  validates :ticker ,format: {without: /\s/} # Only valid with no space
  
end
