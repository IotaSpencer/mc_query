require 'typesafe_enum'
require 'packable'
class Type < TypesafeEnum::Base
  new :LOGIN, 3
  new :COMMAND, 2
  new :RESPONSE, 0

  def bytes
    self.value.unpack(bytes: 4, endian: :little)
  end
end