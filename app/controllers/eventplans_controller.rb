class EventplansController < ApplicationController
def index
    @eventplans = Eventplan.all
  end
  
  def show
    @eventplan = Eventplan.find(params[:id])
  end
  
  def new
    @eventplan = Eventplan.new
  end

  def edit
    @eventplan = Eventplan.find(params[:id])
  end
  
  def create
    @eventplan = Eventplan.new(eventplan_params)
 
    if @eventplan.save
      redirect_to @eventplan #redirect to show action, could be any other message...
    else
      render 'new'
    end
  end
  
  def update
      @eventplan = Eventplan.find(params[:id])
 
      if @eventplan.update(eventplan_params)
        redirect_to @eventplan
      else
        render 'edit'
      end
  end
    
  def destroy
    @eventplan = Eventplan.find(params[:id])
    @eventplan.destroy
 
    redirect_to eventplans_path
  end
    
  # editable fields
  private
    def eventplan_params
      params.require(:eventplan).permit(:planno, :eventno, :workdate, :notes, :activity, :empno)
    end
end
