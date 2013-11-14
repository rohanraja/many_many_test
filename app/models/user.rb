class User < ActiveRecord::Base
	has_and_belongs_to_many :posts

	#usage => a_user.posts << a_post
end
