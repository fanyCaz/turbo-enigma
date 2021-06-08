#password string virtual attribute
#password_confirmation virtual attribute
#to interact with the user
#but has_secure_password will do the work
class User < ApplicationRecord
	#querying the table
	#instance of user
	#important for auth and create pass and pass confirmation
	has_secure_password
	validates :email, presence: true
	validates :username, presence: true
end
