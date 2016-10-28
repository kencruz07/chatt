class CreateChatrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :chatrooms do |t|
      t.string :name, :null => false
      t.text :description

      t.timestamps :null => false
    end
  end
end
