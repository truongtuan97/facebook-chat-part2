class AddIsOnlineToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isOnline, :boolean, default: false
  end
end
