class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :url_str
      t.text :description

      t.timestamps
    end
  end
end
