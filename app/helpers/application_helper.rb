module ApplicationHelper

	def avatar_url(user)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase
		if user.image? # check if when user sign up/in with social media and they have image
			user.image # use the social media image
		else # use image from graviter 
			"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=150"
		end
	end



	# def avatar_url(user)
	# 	if user.image
 #      "http://graph.facebook.com/#{user.uid}/picture?type=large"
 #    else
	# 		gravatar_id = Digest::MD5::hexdigest(user.email).downcase
	# 		"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=150"
	# 	end
	# end

	# def avatar_url(user)
	# 	gravatar_id = Digest::MD5::hexdigest(user.email).downcase
	# 		if user.image? # check if when user sign up/in with social media and they have image
	# 			user.image # use the social media image
	# 		else # use image from graviter 
	# 			"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=40"
	# 		end
	# 	end



end