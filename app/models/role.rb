class Role < ApplicationRecord
  has_many :role_users, dependent: :destroy
  has_many :users, through: :role_users
  has_many :permission_roles, dependent: :destroy
  has_many :permissions, through: :permission_roles
  has_many :project_users, class_name: ProjectUser.name,
                           foreign_key: :project_role_id, dependent: :destroy
end
