class AttendantsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event.attendants << current_user

    redirect_to event_path(@event)
  end
end
