class AddImageUrlToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_column :bookmarks, :image_url, :string
  end
end
