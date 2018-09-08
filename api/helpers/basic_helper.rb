module Test::BasicHelper
  def session
    env['rack.session']
  end

  def general_error(message, status=400)
    error!({error_description: message}, status)
  end
end