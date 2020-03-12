class Order < ApplicationRecord
    belongs_to :user
    has_many :join_table_items_orders
    has_many :items, through: :join_table_items_orders
    after_create :order_send

    def order_send
        UserMailer.order_email(self.user).deliver_now
    end
    
end
