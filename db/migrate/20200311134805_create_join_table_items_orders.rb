class CreateJoinTableItemsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_items_orders do |t|
      t.belongs_to :order
      t.belongs_to :item
      t.timestamps
    end
  end
end
