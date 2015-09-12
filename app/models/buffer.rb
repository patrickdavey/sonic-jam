class Buffer < ActiveRecord::Base
  scope :enabled, -> { where(enabled: true)}
  scope :recent, -> { order(updated_at: 'desc')}

  validates_presence_of :name, :code
end
