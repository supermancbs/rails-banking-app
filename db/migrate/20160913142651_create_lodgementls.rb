class CreateLodgementls < ActiveRecord::Migration[5.0]
  def change
    create_table :lodgementls do |t|
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end
