class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :delivery_charge
  belongs_to_active_hash :delivery_days
  # belongs_to_active_hash :delivery_ways
  has_many :item_images
  # belongs_to :user
  accepts_nested_attributes_for :item_images
end
