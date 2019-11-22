class Word < ApplicationRecord
extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, optional: true
  belongs_to :wordcreater, optional: true
  belongs_to_active_hash :genre
  has_many :comments
  mount_uploader :image, ImageUploader

  validates :genre_id, presence: true

end
