class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
  end
  
  def show
    @facility = Facility.find(params[:id])
  end
  
  def new
    @facility = Facility.new
  end

  def edit
    @facility = Facility.find(params[:id])
  end
  
  def create
    #render plain: params[:facility][:facno].inspect # get one parameter
    #render plain: params[:facility].inspect # get all parameters
    
    # @facility = Facility.new(params[:facility]) weak parameters
    @facility = Facility.new(facility_params)
 
    if @facility.save
      redirect_to @facility #redirect to show action, could be any other message...
    else
      render 'new'
    end
  end
  
=begin
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end  
=end

    def update
      @facility = Facility.find(params[:id])
 
      if @facility.update(facility_params)
        redirect_to @facility
      else
        render 'edit'
      end
    end
    
    def destroy
      @facility = Facility.find(params[:id])
      @facility.destroy
 
      redirect_to facilities_path
    end
    
    # editable fields
    private
      def facility_params
        params.require(:facility).permit(:facno, :facname)
      end
end