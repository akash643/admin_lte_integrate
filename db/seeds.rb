# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.logger = Logger.new(STDOUT)
class SeedMethods
  def self.createUser(email,role)
    if !User.where(email: email).present?
      user = User.find_or_initialize_by(email: email)
      user.password = "password"
      user.role_id = Role.find_by(name: role).try(:id)
      # user.confirmed_at = Time.now # Not using confirmable right now
      user.save
    end
  end
end

# Create roles
ROLES = {
  "Admin" => {
    description: "Admin is only one user and can do any action on app."
  },
  "User" => {
    description: "User is someone who will use the app"
  }
}
ROLES.each do |role, attributes|
  record = Role.find_or_create_by(name: role)
  record.update(attributes)# unless record.default_permissions.as_json == role[:default_permissions].as_json
end

# Create default Admin User, please change these on production
SeedMethods.createUser("admin@anviam.com", "Admin")