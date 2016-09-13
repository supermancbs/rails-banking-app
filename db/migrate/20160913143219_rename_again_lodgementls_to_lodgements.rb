class RenameAgainLodgementlsToLodgements < ActiveRecord::Migration[5.0]
  def change
    rename_table :lodgementl, :lodgement
  end
end
