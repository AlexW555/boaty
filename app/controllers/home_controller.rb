class HomeController < ApplicationController
    def index
      @total_outings = Outing.count
      @boats_available = Boat.all.where(available: true).count
      render
    end
end
