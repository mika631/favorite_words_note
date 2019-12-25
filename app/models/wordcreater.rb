class Wordcreater < ApplicationRecord
  has_many :words
  belongs_to :users
  accepts_nested_attributes_for :words
end
