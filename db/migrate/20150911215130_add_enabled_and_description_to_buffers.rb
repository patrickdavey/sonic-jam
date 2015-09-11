class AddEnabledAndDescriptionToBuffers < ActiveRecord::Migration
  def change
    add_column :buffers, :enabled, :boolean, default: true, null: false
    add_column :buffers, :description, :string
  end
end
