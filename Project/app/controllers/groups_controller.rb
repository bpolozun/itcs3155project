class GroupsController < ApplicationController
    
    def sports
         @groups = Group.all 
    end
    def exsports
         @groups = Group.all 
    end
    def music
         @groups = Group.all 
    end
    def academic
         @groups = Group.all 
    end
    def new
        @group = Group.new
    end
    def gaming
        @groups = Group.all
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
       @groups = Group.all 
    end
    
    def update
        @group = Group.find(params[:id])
        if @group.update(group_parameters)
            redirect_to @group
        else
            render 'edit'
        end
    end
    
    def edit
       @group = Group.find(params[:id]) 
    end
    
    def destroy
        @group = Group.find(params[:id])
        @group.destroy
        
        redirect_to groups_path
    end
    
    CATEGORIES = ['Sports', 'Extreme Sports', 'Online', 'Music', 'Study', 'Other']
    
    private
    def group_parameters
        params.require(:group).permit(:groupName, :description, :numberNeeded, :numberTotal, :category)
    end
end