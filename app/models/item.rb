class Item < ApplicationRecord
  has_many :join_table_items_carts, dependent: :nullify
  has_many :join_table_items_orders
  has_many :orders, through: :join_table_items_orders
end