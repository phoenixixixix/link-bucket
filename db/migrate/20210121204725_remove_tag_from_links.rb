class RemoveTagFromLinks < ActiveRecord::Migration[6.0]
  def change
    remove_reference :links, :tag, index: true, foreign_key: true
  end
end
