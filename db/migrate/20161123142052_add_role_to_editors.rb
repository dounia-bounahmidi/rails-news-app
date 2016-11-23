class AddRoleToEditors < ActiveRecord::Migration[5.0]
  def change
    add_column :editors, :role, :string
  end
end
