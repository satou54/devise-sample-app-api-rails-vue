Rails.application.routes.draw do
  scope format: "json" do
    resources :users do
      resources :posts
    end
  end

  mount_devise_token_auth_for "User", at: "auth"
end
