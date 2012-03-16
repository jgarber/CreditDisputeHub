Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, "eRSVD3ypi6Dq9De94MhnXQ", "HexWmujv49robqQ9S3myCMhjD6J0H1ITaR6o"
  provider :facebook, "238536029523406", "6f1456872cec9d6b33ea00f3ced78961",
    :scope => 'email'
  provider :google_oauth2, "89417234321.apps.googleusercontent.com", "Sdu8EVEWQykYa4inPGz_CSic", {access_type: 'online', approval_prompt: ''}
end
