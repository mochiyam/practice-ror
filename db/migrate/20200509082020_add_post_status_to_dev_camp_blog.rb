class AddPostStatusToDevCampBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :dev_camp_blogs, :status, :integer, default: 0
  end
end
