Rails.application.routes.draw do
  get "/:page" => "pages#show"
end
