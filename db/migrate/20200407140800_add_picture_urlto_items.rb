class AddPictureUrltoItems < ActiveRecord::Migration[5.2]
def change
add_column :items, :picture_url, :string
end
end
