Rails.application.routes.draw do

  namespace :api do

    # ----- DATES ----------------------------------------------------------------------------------

    post "/date/cancel"       => "date#cancel"
    post "/date/confirm"      => "date#confirm"
    post "/date/sendfeedback" => "date#send_feedback"

    # ----- MATCHES --------------------------------------------------------------------------------

    post "/match/results" => "match#results"
    post "/match/review"  => "match#review"

    # ----- MISC. ENDPOINTS ------------------------------------------------------------------------

    get "/appstoreids" => "misc#app_store_ids"
    get "/terms"       => "misc#terms_of_service"

    # ----- SCHOOLS --------------------------------------------------------------------------------

    get "/school/search" => "school#search"

    # ----- VENUES ---------------------------------------------------------------------------------

    get "/venue/search" => "venue#search"

    # ----- DEBUGGING / UPTIME ---------------------------------------------------------------------

    match "/empty_response" => "test#empty_response", via: [:get, :post]
    match "/ping"           => "test#ping",           via: [:get, :post]

  end

  root "empty#four_oh_four"
end
