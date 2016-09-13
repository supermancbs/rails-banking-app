class RenameAgainLodgementToLodgements < ActiveRecord::Migration[5.0]
  def change
    rename_table :lodgement, :lodgements
  end
end
