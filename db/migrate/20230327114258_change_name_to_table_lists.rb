class ChangeNameToTableLists < ActiveRecord::Migration[7.0]
  def change
    change_column(:lists, :name, :string)
  end
end
