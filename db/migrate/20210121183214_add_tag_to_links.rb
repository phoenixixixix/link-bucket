class AddTagToLinks < ActiveRecord::Migration[6.0]
  def change
    add_reference :links, :tag, index: true, foreign_key: true
  end
end
