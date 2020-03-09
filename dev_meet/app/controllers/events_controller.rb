class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.owner_id = current_user.id

    if @event.save
      redirect_to @event
    else
      render action: :new
    end
  end

  def update
    event = Event.find(params[:id])

    if event.update(event_params)
      redirect_to event
    else
      render action: :new
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy

    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end
