class Word < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :wordcreater, optional: true
  has_many :comments
end
