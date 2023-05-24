class CreateColaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :colaborators do |t|
      t.string :name
      t.string :email
      t.string :direction

      t.timestamps
    end
  end
end
