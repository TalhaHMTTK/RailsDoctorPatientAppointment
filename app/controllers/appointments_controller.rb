class AppointmentsController < ApplicationController

    def new 
        @physicians = Physician.all
    end

    def create
        @appointment = Appointment.create(params.require(:appointment).permit(:appointment_date, :physician_id, :patient_id))
        if @appointment.save
            redirect_to @appointment
        else
            render 'new'
        end
    end


    def show 
        @appointment = Appointment.find(params[:id])
        @physician = @appointment.physician
        @patient = @appointment.patient
    end

    def index
        @appointments = Appointment.all
    end
end