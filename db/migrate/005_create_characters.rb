class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :Characters do |t|
      t.string :name
      t.integer :actor_id
      t.integer :show_id
    end
  end
end
