class StoriesController < ApplicationController
  #before_filter :signed_in_user, only: [:create, :edit, :destroy]


  # GET /stories
  # GET /stories.json
  def index

      @stories=Story.search(params[:search]).paginate(:per_page =>10, :page => params[:page])
#       @stories = Story.paginate(:page =>params[:page])
    # For Ajax search
    #@stories = Story.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb

      # Rendering all stories in an xml format http://localhost:3000/stories.xml

      format.xml { render :xml=> @stories }
    end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
#      if signed_in?
        @story = Story.find(params[:id])
#      else
#        @story=Story.all
#      end

      respond_to do |format|
        format.html # show.html.erb
        format.xml { render xml: @story }
    end
  end

  # GET /stories/new
  # GET /stories/new.json
  def new
    @story = Story.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story }
    end
  end

  # GET /stories/1/edit
  def edit
    @story= Story.find_by_id(params[:id])

  end

  # POST /stories
  # POST /stories.json
  def create
    #@story = current_user.stories.build(params[:story])
    @story = current_user.stories.new(params[:story])
    if @story.save
      flash[:success] = "Success story created!"
      #redirect_to stories_path
      redirect_to :controller => :users, :action => :show, :id => current_user.id
    else
      render 'stories/new'
    end
  end

  # PUT /stories/1
  # PUT /stories/1.json
  def update
    @story = Story.find(params[:id])

    respond_to do |format|
      if @story.update_attributes(params[:story])
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
#    @story = Story.find(params[:id])
    @story.destroy

    respond_to do |format|
      format.html { redirect_to new_story_path }
      #format.html {redirect_to :controller => :users, :action => :show, :id => current_user.id}
      format.json { head :no_content }
    end
  end


end
