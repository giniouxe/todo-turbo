class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.text :description
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
