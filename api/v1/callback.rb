class Test::API::Callback < Grape::API
  version 'v1', using: :accept_version_header

  resources :callback do
  end
end