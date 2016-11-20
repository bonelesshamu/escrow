Rails.application.routes.draw do
  namespace :seller do
    get 'index' => 'top#index'
  end

  namespace :buyer do
    get 'index' => 'top#index'
  end

  namespace :escrow do
    get 'index' => 'top#index'
  end

  namespace :bank do
    get 'index' => 'top#index'
  end
end
