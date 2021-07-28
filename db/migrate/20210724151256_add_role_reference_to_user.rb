class AddRoleReferenceToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :role, type: :uuid, index: true
  end
end
