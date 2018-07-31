class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :stage
      t.string :looking_for
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
