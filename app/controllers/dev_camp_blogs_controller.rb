class DevCampBlogsController < ApplicationController
  before_action :set_dev_camp_blog, only: [:show, :edit, :update, :destroy, :toggle_status]

  # GET /dev_camp_blogs
  # GET /dev_camp_blogs.json
  def index
    @dev_camp_blogs = DevCampBlog.all
    @page_title = "Moana's Porfolio Blog"
  end

  # GET /dev_camp_blogs/1
  # GET /dev_camp_blogs/1.json
  def show
    @page_title = @dev_camp_blog.title
    @seo_keywords = @dev_camp_blog.body
  end

  # GET /dev_camp_blogs/new
  def new
    @dev_camp_blog = DevCampBlog.new
  end

  # GET /dev_camp_blogs/1/edit
  def edit
  end

  # POST /dev_camp_blogs
  # POST /dev_camp_blogs.json
  def create
    @dev_camp_blog = DevCampBlog.new(dev_camp_blog_params)

    respond_to do |format|
      if @dev_camp_blog.save
        format.html { redirect_to @dev_camp_blog, notice: 'Dev camp blog was successfully created.' }
        format.json { render :show, status: :created, location: @dev_camp_blog }
      else
        format.html { render :new }
        format.json { render json: @dev_camp_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_camp_blogs/1
  # PATCH/PUT /dev_camp_blogs/1.json
  def update
    respond_to do |format|
      if @dev_camp_blog.update(dev_camp_blog_params)
        format.html { redirect_to @dev_camp_blog, notice: 'Dev camp blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dev_camp_blog }
      else
        format.html { render :edit }
        format.json { render json: @dev_camp_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_camp_blogs/1
  # DELETE /dev_camp_blogs/1.json
  def destroy
    @dev_camp_blog.destroy
    respond_to do |format|
      format.html { redirect_to dev_camp_blogs_url, notice: 'Dev camp blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def toggle_status
  if @dev_camp_blog.draft?
    @dev_camp_blog.published! 
  elsif @dev_camp_blog.published?
    @dev_camp_blog.draft!
  end
    redirect_to dev_camp_blogs_url, notice: 'Post status has been updated'
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_camp_blog
      @dev_camp_blog = DevCampBlog.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dev_camp_blog_params
      params.require(:dev_camp_blog)
    end
end
