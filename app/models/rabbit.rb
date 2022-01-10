class Rabbit < ApplicationRecord
  validates_presence_of :name, :birthday
  has_rich_text :description
  has_many :weights, dependent: :destroy
end
