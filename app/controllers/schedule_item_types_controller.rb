class ScheduleItemTypesController < ApplicationController
  # GET /schedule_item_types
  # GET /schedule_item_types.xml
  def index
    @schedule_item_types = ScheduleItemType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @schedule_item_types }
    end
  end

  # GET /schedule_item_types/1
  # GET /schedule_item_types/1.xml
  def show
    @schedule_item_type = ScheduleItemType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @schedule_item_type }
    end
  end

  # GET /schedule_item_types/new
  # GET /schedule_item_types/new.xml
  def new
    @schedule_item_type = ScheduleItemType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @schedule_item_type }
    end
  end

  # GET /schedule_item_types/1/edit
  def edit
    @schedule_item_type = ScheduleItemType.find(params[:id])
  end

  # POST /schedule_item_types
  # POST /schedule_item_types.xml
  def create
    @schedule_item_type = ScheduleItemType.new(params[:schedule_item_type])

    respond_to do |format|
      if @schedule_item_type.save
        format.html { redirect_to(@schedule_item_type, :notice => 'Schedule item type was successfully created.') }
        format.xml  { render :xml => @schedule_item_type, :status => :created, :location => @schedule_item_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @schedule_item_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /schedule_item_types/1
  # PUT /schedule_item_types/1.xml
  def update
    @schedule_item_type = ScheduleItemType.find(params[:id])

    respond_to do |format|
      if @schedule_item_type.update_attributes(params[:schedule_item_type])
        format.html { redirect_to(@schedule_item_type, :notice => 'Schedule item type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @schedule_item_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_item_types/1
  # DELETE /schedule_item_types/1.xml
  def destroy
    @schedule_item_type = ScheduleItemType.find(params[:id])
    @schedule_item_type.destroy

    respond_to do |format|
      format.html { redirect_to(schedule_item_types_url) }
      format.xml  { head :ok }
    end
  end
end
