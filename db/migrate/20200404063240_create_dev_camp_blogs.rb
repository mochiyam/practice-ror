class CreateDevCampBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dev_camp_blogs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
