Rails.application.routes.draw do
  namespace :seller do
    get 'index' => 'top#index'
    get 'status' => 'top#status'
    post 'status' => 'top#status'
    get 'issue' => 'top#issue'
    post 'issue' => 'top#issue_post'
  end

  namespace :escrow do
    get 'index' => 'top#index'
    get 'payment' => 'top#payment'
  end

  namespace :buyer do
    get 'index' => 'top#index'
    get 'status' => 'top#status'
    get 'escrow_status' => 'top#escrow_status'
    get 'buy' => 'top#buy'
    get 'confirm' => 'top#confirm'
  end

  namespace :bank do
    get 'index' => 'top#index'
    get 'payment' => 'top#payment'
    get 'pay' => 'top#pay'
  end
end
