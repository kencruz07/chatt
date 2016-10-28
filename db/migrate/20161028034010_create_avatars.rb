class CreateAvatars < ActiveRecord::Migration[5.0]
  def change
    create_table :avatars do |t|
      t.references :user, :index => true
      t.string :x_pos
      t.string :y_pos
      t.integer :sprite_id

      t.timestamps :null => false
    end
  end
end
