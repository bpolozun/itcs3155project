class GroupController < ApplicationController
    
    def new
        @group = Group.new
    end
    
    def create
        @group = Group.new(group_parameters)
        
        if @group.save
            redirect_to @group
        else 
            render 'new'
        end
    end
    
    def show
        @group = Group.find(params[:id])
    end
    
    def index
       @group = Group.all 
    end
    
    def edit
       @group = Group.find(params[:id]) 
    end
    
    private
    def group_parameters
        params.require(:group).permit(:groupName, :desription, :numberNeeded, :numberTotal, :category)
    end
end