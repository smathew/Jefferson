class BoardloginsController < ApplicationController
  # GET /boardlogins
  # GET /boardlogins.xml
  def index
    @boardlogins = Boardlogin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boardlogins }
    end
  end

  # GET /boardlogins/1
  # GET /boardlogins/1.xml
  def show
    @boardlogin = Boardlogin.find(params[:id])
	
    respond_to do |format|
		#if @boardlogin.nil?
		if @boardlogin.length == 0
			redirect_to(new_boardlogin_path)
		else 
			format.html # show.html.erb
			format.xml  { render :xml => @boardlogin }
			@boardlogin.destroy
		end 
    end
	 #To delete all records in the table
	 #boardlogin1 = Boardlogin.find(:all)
	 #if boardlogin1.size > 0
	 #	Boardlogin.destroy(boardlogin1)
	 #end

  end

  # GET /boardlogins/new
  # GET /boardlogins/new.xml
  def new
    @boardlogin = Boardlogin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boardlogin }
    end
  end

  # GET /boardlogins/1/edit
  def edit
    @boardlogin = Boardlogin.find(params[:id])
  end

  # POST /boardlogins
  # POST /boardlogins.xml
  def create
    @boardlogin = Boardlogin.new(params[:boardlogin])
	
    respond_to do |format|
      if @boardlogin.save
      flash[:notice] = 'Login successful'
        format.html { redirect_to(@boardlogin) }
        format.xml  { render :xml => @boardlogin, :status => :created, :location => @boardlogin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boardlogin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boardlogins/1
  # PUT /boardlogins/1.xml
  def update
    @boardlogin = Boardlogin.find(params[:id])

    respond_to do |format|
      if @boardlogin.update_attributes(params[:boardlogin])
        flash[:notice] = 'Boardlogin was successfully updated.'
        format.html { redirect_to(@boardlogin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boardlogin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boardlogins/1
  # DELETE /boardlogins/1.xml
  def destroy
    @boardlogin = Boardlogin.find(params[:id])
    @boardlogin.destroy

    respond_to do |format|
      format.html { redirect_to(boardlogins_url) }
      format.xml  { head :ok }
    end
  end
end
