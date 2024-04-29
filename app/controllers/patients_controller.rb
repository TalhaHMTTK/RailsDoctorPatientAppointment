class PatientsController < ApplicationController


    def show 
        @patient = Patient.find(params[:id])
    end

    def index
        @patients = Patient.all
    end


    def new 

    end

    def create
        @patient = Patient.create(params.require(:patient).permit(:name))
        if @patient.save
            redirect_to @patient
        else 
            render 'new'
        end
    end

end