class MemappsController < ApplicationController
  # GET /memapps
  # GET /memapps.xml
  def index
    @memapps = Memapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @memapps }
    end
  end

  # GET /memapps/1
  # GET /memapps/1.xml
  def show
    @memapp = Memapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @memapp }
    end
  end

  # GET /memapps/new
  # GET /memapps/new.xml
  def new
    @memapp = Memapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @memapp }
    end
  end

  # GET /memapps/1/edit
  def edit
    @memapp = Memapp.find(params[:id])
  end

  # POST /memapps
  # POST /memapps.xml
  def create
    @memapp = Memapp.new(params[:memapp])

    respond_to do |format|
      if @memapp.save
        flash[:notice] = 'Your membership application was successfully submitted.'
		#send email
		Emailer.deliver_memapp_email(@memapp)
		
        format.html { redirect_to(@memapp) }
        format.xml  { render :xml => @memapp, :status => :created, :location => @memapp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @memapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /memapps/1
  # PUT /memapps/1.xml
  def update
    @memapp = Memapp.find(params[:id])

    respond_to do |format|
      if @memapp.update_attributes(params[:memapp])
        flash[:notice] = 'Memapp was successfully updated.'
        format.html { redirect_to(@memapp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @memapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /memapps/1
  # DELETE /memapps/1.xml
  def destroy
    @memapp = Memapp.find(params[:id])
    @memapp.destroy

    respond_to do |format|
      format.html { redirect_to(memapps_url) }
      format.xml  { head :ok }
    end
  end
end
