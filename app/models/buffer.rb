class Buffer < ActiveRecord::Base
  scope :enabled, -> { where(enabled: true)}
  validates_presence_of :name, :code
end
