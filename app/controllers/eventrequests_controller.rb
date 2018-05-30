class EventrequestsController < ApplicationController
  def index
    @eventrequests = Eventrequest.all
  end
  
  def show
    @eventrequest = Eventrequest.find(params[:id])
  end
  
  def new
    @eventrequest = Eventrequest.new
  end

  def edit
    @eventrequest = Eventrequest.find(params[:id])
  end
  
  def create
    @eventrequest = Eventrequest.new(eventrequest_params)
 
    if @eventrequest.save
      redirect_to @eventrequest #redirect to show action, could be any other message...
    else
      render 'new'
    end
  end
  
  def update
      @eventrequest = Eventrequest.find(params[:id])
 
      if @eventrequest.update(eventrequest_params)
        redirect_to @eventrequest
      else
        render 'edit'
      end
  end
    
  def destroy
    @eventrequest = Eventrequest.find(params[:id])
    @eventrequest.destroy
 
    redirect_to eventrequests_path
  end
    
  # editable fields
  private
    def eventrequest_params
      params.require(:eventrequest).permit(:eventno, :dateheld, :datereq, :custno, :facno, :dateauth, :status, :estcost,
      :estaudience, :budno)
    end
end
