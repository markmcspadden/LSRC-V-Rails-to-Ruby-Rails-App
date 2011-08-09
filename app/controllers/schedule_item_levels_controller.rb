class ScheduleItemLevelsController < ApplicationController
  # GET /schedule_item_levels
  # GET /schedule_item_levels.xml
  def index
    @schedule_item_levels = ScheduleItemLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @schedule_item_levels }
    end
  end

  # GET /schedule_item_levels/1
  # GET /schedule_item_levels/1.xml
  def show
    @schedule_item_level = ScheduleItemLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @schedule_item_level }
    end
  end

  # GET /schedule_item_levels/new
  # GET /schedule_item_levels/new.xml
  def new
    @schedule_item_level = ScheduleItemLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @schedule_item_level }
    end
  end

  # GET /schedule_item_levels/1/edit
  def edit
    @schedule_item_level = ScheduleItemLevel.find(params[:id])
  end

  # POST /schedule_item_levels
  # POST /schedule_item_levels.xml
  def create
    @schedule_item_level = ScheduleItemLevel.new(params[:schedule_item_level])

    respond_to do |format|
      if @schedule_item_level.save
        format.html { redirect_to(@schedule_item_level, :notice => 'Schedule item level was successfully created.') }
        format.xml  { render :xml => @schedule_item_level, :status => :created, :location => @schedule_item_level }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @schedule_item_level.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /schedule_item_levels/1
  # PUT /schedule_item_levels/1.xml
  def update
    @schedule_item_level = ScheduleItemLevel.find(params[:id])

    respond_to do |format|
      if @schedule_item_level.update_attributes(params[:schedule_item_level])
        format.html { redirect_to(@schedule_item_level, :notice => 'Schedule item level was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @schedule_item_level.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_item_levels/1
  # DELETE /schedule_item_levels/1.xml
  def destroy
    @schedule_item_level = ScheduleItemLevel.find(params[:id])
    @schedule_item_level.destroy

    respond_to do |format|
      format.html { redirect_to(schedule_item_levels_url) }
      format.xml  { head :ok }
    end
  end
end
