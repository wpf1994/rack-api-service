class Test::API::Setup < Grape::API
  version 'v1', using: :accept_version_header

  resources :setup do
    post do

    end

    get do

    end
  end
end