if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_banking_backend", domain: "whateveryourdomainis.com"
else 
    Rails.application.config.session_store :cookie_store, key: "_banking_backend"
end
