Rails.application.routes.draw do
  devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  scope module: :public do
    root to: "homes#top"
    resources :users, only: [:index, :show, :edit, :update]
    resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  end

  devise_for :admin, controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
