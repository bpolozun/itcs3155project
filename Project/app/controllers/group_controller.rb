class GroupController < ApplicationController
    
    def new
        
    end
    
    def create
        #render plain: params[:group].inspect
        @group = Group.new(params[:group])
        
        @group.save
        redirect_to @group
    end
    
    def index
       @group = Group.all 
    end
    
    def edit
       @group = Group.find(params[:id]) 
    end
    
    private
    def group_parameters
        params.require(:group).permit(:groupName, :desription, :numberNeeded, :numberTotal)
    end
end