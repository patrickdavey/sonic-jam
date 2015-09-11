class CreateBuffers < ActiveRecord::Migration
  def change
    create_table :buffers do |t|
      t.string :name
      t.text :code

      t.timestamps null: false
    end
  end
end
