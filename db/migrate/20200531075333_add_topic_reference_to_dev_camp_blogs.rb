class AddTopicReferenceToDevCampBlogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :dev_camp_blogs, :topic, foreign_key: true
  end
end
