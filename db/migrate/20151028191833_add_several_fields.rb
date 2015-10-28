class AddSeveralFields < ActiveRecord::Migration
  def change
    add_column :users, :surname, :string
    add_column :users, :avatar, :string
    add_column :users, :passport_scan, :string
    add_column :users, :birthdate, :date
    add_column :users, :type, :string
    add_column :users, :shop_name, :string
    add_column :products, :pro_mark, :boolean
    add_column :products, :shop_name, :string
  end
end
