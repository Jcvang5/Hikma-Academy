# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :cart_products
  has_many :orderables, dependent: :destroy
  has_many :carts, through: :orderables
  has_many :carts, through: :cart_products
  belongs_to :course
end
