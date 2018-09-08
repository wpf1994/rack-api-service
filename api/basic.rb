module Test
  class API::Basic < Grape::API
    format :json
    default_format :json
    prefix :api
    helpers Test::BasicHelper

    if Test.env != 'development'
      rescue_from :all do |e|
        GeneralLog.write :error, "#{e.message}\n#{e.backtrace}"

        error!({error_description: '服务器忙，请稍后再试。'}, 500)
      end
    end
    mount Test::API::Callback
    mount Test::API::Setup if $allow_setup

    get '/' do
      'Hello, Test Service'
    end
  end
end