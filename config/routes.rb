Rails.application.routes.draw do

  # TODO: do we actually need this route or anything potentially under it?
  # /test/media => serves files under /test/media (???)

  # ===== API V1 ===================================================================================

  namespace :v1 do

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

    # ----- USERS ----------------------------------------------------------------------------------

    # TODO: figure out regex constraints for :name and :token
    get  "/user/attrs"                => "user#attributes"
    get  "/user/confirm_email/:token" => "user#confirm_email" #, constraints: { token: /.../ }
    # TODO: verify iOS does not request /content with trailing slash
    post "/user/content"              => "user#content"
    post "/user/dates"                => "user#dates"
    post "/user/destroyuser"          => "user#destroy_user"
    post "/user/lastplaceid"          => "user#last_place_id"
    post "/user/loc"                  => "user#location"
    post "/user/login"                => "user#login"
    post "/user/logout"               => "user#logout"
    get  "/user/places"               => "user#places"
    post "/user/profile"              => "user#profile"
    post "/user/save_city"            => "user#save_city"
    post "/user/schedule"             => "user#schedule"
    post "/user/schedule/set"         => "user#set_schedule"
    post "/user/sendInvites"          => "user#send_invites", as: "user_send_invites"
    get  "/user/:name/profile"        => "user#user_profile" #, constraints: { name: /.../ }
    post "/user/verify"               => "user#verify"
    post "/user/update"               => "user#update"

    # ----- VENUES ---------------------------------------------------------------------------------

    get "/venue/search" => "venue#search"

    # ----- DEBUGGING / UPTIME ---------------------------------------------------------------------

    match "/empty_response" => "test#empty_response", via: [:get, :post]
    match "/ping"           => "test#ping",           via: [:get, :post]

  end

  root "empty#four_oh_four"
end
