class PersonelsController < ApplicationController
  def index
    
    @items = Personel.all
   

  end
  def hello
    
    # redirect_to(controller: "personels", action: "index")
  end
 def new
@personel=Personel.new
 end

 def create 
    
  @personel = Personel.new(params_personal)

  if @personel.save
    redirect_to personels_path
  else 
    render :new
  end
end



 def edit
    @personel=Personel.find(params[:id]) 

end


def update
@personel=Personel.find(params[:id])

if @personel.update(params_personal)
    redirect_to personels_path
else 
    render:edit,status:unprocessable_entity
end
end
# =====================DELETE CODE ===========================


  
  def destroy
     
    @personel = Personel.find(params[:id])
  
    if @personel.destroy
      redirect_to personels_path
    else
      render :index, status: :unprocessable_entity
    end
  end
  

private
  def params_personal
    params.require(:personel).permit(:title ,:body)
  end

end
