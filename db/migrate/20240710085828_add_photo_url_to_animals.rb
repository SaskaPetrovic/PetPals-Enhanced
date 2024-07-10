class AddPhotoUrlToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :photo_url, :string
  end
end
