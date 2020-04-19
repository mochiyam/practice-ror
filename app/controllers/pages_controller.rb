class PagesController < ApplicationController
  def home
  	@posts = DevCampBlog.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end
end
