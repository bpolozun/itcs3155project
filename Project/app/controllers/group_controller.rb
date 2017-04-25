class GroupController < ApplicationController
    
    def new
        @groups = Group.new
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
        @group = Group.find(params[:groupName])
    end
    
    def index
       @group = Group.all 
    end
    
    def edit
       @group = Group.find(params[:groupName]) 
    end
    
    def destroy
        @group = Group.find(params[:groupName])
        @group.destroy
        
        redirect_to group_path
    end
    
    private
    def group_parameters
        params.require(:group).permit(:groupName, :desription, :numberNeeded, :numberTotal, :category)
    end
end