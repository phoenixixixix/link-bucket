class RemoveLinkFromTags < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tags, :link, null: false, foreign_key: true
  end
end
