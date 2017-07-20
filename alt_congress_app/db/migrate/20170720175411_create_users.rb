class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :party
      t.string :gender
      t.string :zip
      t.string :address
      t.string :State
      t.string :district
      t.boolean :i_vote
      t.boolean :i_fund
      t.boolean :i_join
      t.boolean :verified
    end
  end
end
