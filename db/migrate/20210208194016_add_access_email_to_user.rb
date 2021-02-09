class AddAccessEmailToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :access_email, :boolean, default: false
  end
end
