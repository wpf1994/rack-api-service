require File.expand_path('../boot', __FILE__)

Bundler.require #(:default, ENV['RACK_ENV'])

module Test
  # 服务的根目录
  mattr_accessor :root
  @@root = Pathname.new([__dir__, '..'].join('/')).realpath.to_s

  # 服务的环境模式
  mattr_accessor :env
  @@env = ENV["RACK_ENV"] || "development"
end

require 'require_all'
require 'active_support/dependencies'
# 加载所有外部代码库
require_all 'vendor/**/*.rb'
# 加载所有初始化代码
require_all 'config/initializers/*.rb'

module Test
  class API < Grape::API
    require_all 'api/**/*.rb'

    GeneralLog.write :logs,'-------------------------------------------------'
    GeneralLog.write :logs,'-------------------------------------------------'
    GeneralLog.write :logs,'-----------------------开始----------------------'
    GeneralLog.write :logs,'-------------------------------------------------'
    GeneralLog.write :logs,'-------------------------------------------------'

    mount Test::API::Basic

    add_swagger_documentation specific_api_documentation: {desc: 'Racｋ＋ Grape Micro Service'}
  end
end