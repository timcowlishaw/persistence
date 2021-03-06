require 'persistence/serialized'
require 'json'

class Persistence::Serialized::JSONSerializer
  def serialize(entity)
    entity.to_json
  end

  def deserialize(string)
    JSON.parse("{\"foo\": #{string}}")['foo']
  end
end
