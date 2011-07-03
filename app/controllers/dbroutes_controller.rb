class DbroutesController < ApplicationController
  # GET /dbroutes
  # GET /dbroutes.xml
  def index
    @dbroutes = Dbroute.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dbroutes }
    end
  end

  # GET /dbroutes/1
  # GET /dbroutes/1.xml
  def show
    @dbroute = Dbroute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dbroute }
    end
  end

  # GET /dbroutes/new
  # GET /dbroutes/new.xml
  def new
    @dbroute = Dbroute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dbroute }
    end
  end

  # GET /dbroutes/1/edit
  def edit
    @dbroute = Dbroute.find(params[:id])
  end

  # POST /dbroutes
  # POST /dbroutes.xml
  def create
    @dbroute = Dbroute.new(params[:dbroute])

    respond_to do |format|
      if @dbroute.save
        format.html { redirect_to(@dbroute, :notice => 'Dbroute was successfully created.') }
        format.xml  { render :xml => @dbroute, :status => :created, :location => @dbroute }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dbroute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dbroutes/1
  # PUT /dbroutes/1.xml
  def update
    @dbroute = Dbroute.find(params[:id])

    respond_to do |format|
      if @dbroute.update_attributes(params[:dbroute])
        format.html { redirect_to(@dbroute, :notice => 'Dbroute was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dbroute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dbroutes/1
  # DELETE /dbroutes/1.xml
  def destroy
    @dbroute = Dbroute.find(params[:id])
    @dbroute.destroy

    respond_to do |format|
      format.html { redirect_to(dbroutes_url) }
      format.xml  { head :ok }
    end
  end
end
