class GroupController < ApplicationController
    
    def new
        
    end
    
    def create
        #render plain: params[:group].inspect
        @group = group.new(params[:group])
        
        @group.save
        redirect_to @group
    end
    
    def index
       @group = group.all 
    end
    
    def edit
       @group = group.find(params[:id]) 
    end
    
    private
    def group_parameters
        params.require(:group).permit(:groupName, :desription, :numberNeeded, :numberTotal)
    end
end