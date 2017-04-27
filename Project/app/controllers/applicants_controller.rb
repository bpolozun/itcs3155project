class ApplicantsController < ApplicationController
    def create
        @group = Group.find(params[:group_id])
        @applicant = @group.applicants.create(applicant_params)
        redirect_to group_path(@group)
    end
    
    def destroy
        @group = Group.find(params[:group_id])
        @applicant = @group.applicants.find(params[:id])
        @applicant.destroy
        redirect_to group_path(@group)
    end
    
    private 
        def applicant_params
            params.require(:applicant).permit(:name, :contact)
        end
end
