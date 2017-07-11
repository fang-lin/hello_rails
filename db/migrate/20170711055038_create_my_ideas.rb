class CreateMyIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :my_ideas do |t|
      t.string :picture_des
      t.string :picture

      t.timestamps
    end
  end
end
