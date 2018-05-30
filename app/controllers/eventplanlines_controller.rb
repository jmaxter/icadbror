class EventplanlinesController < ApplicationController
    def index
    @eventplanlines = Eventplanline.all
  end
  
  def show
    @eventplanline = Eventplanline.find(params[:id])
  end
  
  def new
    @eventplanline = Eventplanline.new
  end

  def edit
    @eventplanline = Eventplanline.find(params[:id])
  end
  
  def create
    @eventplanline = Eventplanline.new(eventplanline_params)
 
    if @eventplanline.save
      redirect_to @eventplanline #redirect to show action, could be any other message...
    else
      render 'new'
    end
  end
  
  def update
      @eventplanline = Eventplanline.find(params[:id])
 
      if @eventplanline.update(eventplanline_params)
        redirect_to @eventplanline
      else
        render 'edit'
      end
  end
    
  def destroy
    @eventplanline = Eventplanline.find(params[:id])
    @eventplanline.destroy
 
    redirect_to eventplanlines_path
  end
    
  # editable fields
  private
    def eventplanline_params
      params.require(:eventplanline).permit(:planno, :lineno, :timestart, :timeend, :numberfld, :locno, :resno)
    end
end
