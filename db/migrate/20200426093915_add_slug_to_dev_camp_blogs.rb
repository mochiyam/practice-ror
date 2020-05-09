class AddSlugToDevCampBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dev_camp_blogs, :slug, :string
    add_index :dev_camp_blogs, :slug, unique: true
  end
end
