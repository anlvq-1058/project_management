class CreateUserGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :user_groups do |t|
      t.references :group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
