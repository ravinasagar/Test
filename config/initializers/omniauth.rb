Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '529397487995-5f3660pcts2ua3ii632njjbcp7ll3os9.apps.googleusercontent.com', 'k0IOZVIwQmgPEkePngzrxCZd'

  provider :facebook, '1680433705343618', '4c472d01e9a6333c1367e580084a01a6'
end