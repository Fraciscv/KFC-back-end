class EventsController < ApplicationController

    def index 
        @events = Event.all
        render json: @events
    end

    def show 
        @event = Event.find_by(id: params[:id])
        render json: @event
    end 

    def create
        params[:events].each do |event|
    
       Event.create(conceptionDate:event[:conceptionDate],content:event["content"])
        end

        event=Event.where(conceptionDate:params[:events][0][:conceptionDate])

        render json: event
        # byebug
        # if @event.save
            # byebug
            # render json: @event, status: :accepted
        # else
        #     render json: {errors: @event.errors.full_messages }, status: :unprocessible_entry
        # end
    end

    private

    def event_params
        params.permit(:events)
    end

end
