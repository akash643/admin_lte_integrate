class User < ApplicationRecord
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    role = Role.find_by(name:"User")
    self.role_id ||= role.id

  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         belongs_to :role
        def admin?
          role.name == "Admin"
        end
        
        def user?
          role.name == "User"
        end
end
