class PagesController < ApplicationController
  def home
  	@posts = DevCampBlog.all
  end

  def about
  end

  def contact
  end
end
