class Buffer < ActiveRecord::Base
  validates_presence_of :name, :code
end
