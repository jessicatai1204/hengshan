class ActivitiesController < ApplicationController
  def index
    @activity = Activity.all
  end

  def new
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @activity = Activity.find(id) # look up movie by unique ID
    # will render app/views/movies/show.html.haml by default
  end

  def create
    @activity = Activity.new(params[:activity])
    @activity.save
    redirect_to :activities => :index
  end  

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    #flash[:notice] = "活動 '#{@movie.title}' 已刪除"
    redirect_to activities_path
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update_attributes(params[:activity])
      #flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to activity_path(@activity)
    else
      render 'edit' # note, 'edit' template can access @movie's field values!
    end
  end


end
