class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :prefecture
  has_many :item_images
  # belongs_to :user
  accepts_nested_attributes_for :item_images
end
