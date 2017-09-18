Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
	scope: 'email,public_profile', display:'popup', info_fields:"first_name,last_name,email"
end