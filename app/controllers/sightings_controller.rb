class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting
            render json: sighting, include: [:bird, :location]
        else
            render json: {message: "Unable to find sighting with that id"}
        end
    end
end
