class Topic < ApplicationRecord
	validates_presence_of :title

	has_many :dev_camp_blogs
end
