class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles,  id: :uuid do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
