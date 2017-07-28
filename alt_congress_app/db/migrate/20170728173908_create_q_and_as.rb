class CreateQAndAs < ActiveRecord::Migration[5.0]
  def change
    create_table :q_and_as do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
