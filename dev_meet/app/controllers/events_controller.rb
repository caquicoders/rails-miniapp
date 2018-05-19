class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(events_params)
    event.owner_id = current_user.id

    if event.save
      redirect_to events_path
    else
      render action: :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = current_user.events.find(params[:id])

    if event.update(events_params)
      redirect_to event
    else
      render action: :edit
    end
  end

  def destroy
    current_user.events.find(params[:id]).destroy
    redirect_to events_path
  end

  private

  def events_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end
