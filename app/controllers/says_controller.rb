class SaysController < ApplicationController
  skip_before_filter :authorize
  # GET /says
  # GET /says.xml
  def index
    @says = Say.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @says }
    end
  end

  # GET /says/1
  # GET /says/1.xml
  def show
    @say = Say.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @say }
    end
  end

  # GET /says/new
  # GET /says/new.xml
  def new
    @say = Say.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @say }
    end
  end

  # GET /says/1/edit
  def edit
    @say = Say.find(params[:id])
  end

  # POST /says
  # POST /says.xml
  def create
    @say = Say.new(params[:say])

    respond_to do |format|
      if @say.save
        format.html { redirect_to(@say, :notice => 'Say was successfully created.') }
        format.xml  { render :xml => @say, :status => :created, :location => @say }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @say.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /says/1
  # PUT /says/1.xml
  def update
    @say = Say.find(params[:id])

    respond_to do |format|
      if @say.update_attributes(params[:say])
        format.html { redirect_to(@say, :notice => 'Say was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @say.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /says/1
  # DELETE /says/1.xml
  def destroy
    @say = Say.find(params[:id])
    @say.destroy

    respond_to do |format|
      format.html { redirect_to(says_url) }
      format.xml  { head :ok }
    end
  end
end
