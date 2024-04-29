class PhysiciansController < ApplicationController

    def show
        @physician = Physician.find(params[:id])
    end


    def new 

    end

    def index
        @physicians = Physician.all
    end

    def create
        @physician = Physician.create(params.require(:physician).permit(:name))
        if @physician.save
            redirect_to @physician
        else 
            render 'new'
        end
    end
end