class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    event = Event.find(params[:event_id])
    attendance = event.attendances.build(user: current_user)

    if attendance.save
      flash[:success] = "You have successfully registered to attend #{event.title}."
      redirect_to event
    else
      flash[:alert] = "Unable to register your attendance."
      redirect_to events_path
    end
  end
end
