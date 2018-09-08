class CodeTable < ActiveRecord::Base
  def self.[](key)
    find_by_name(key)
  end

  def json
    JSON.parse(self.value)
  end
end