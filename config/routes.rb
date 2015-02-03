Rails.application.routes.draw do

  namespace :api do

    # ----- MISC. ENDPOINTS ------------------------------------------------------------------------

    get '/appstoreids' => "misc#app_store_ids"
    get '/terms'       => "misc#terms_of_service"

    # ----- DEBUGGING / UPTIME ---------------------------------------------------------------------

    match "/empty_response" => "test#empty_response", via: [:get, :post]
    match "/ping"           => "test#ping",           via: [:get, :post]

  end

  root "empty#four_oh_four"
end
