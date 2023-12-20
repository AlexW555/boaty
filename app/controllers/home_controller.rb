class HomeController < ApplicationController
    def index
      @users = User.all
      render
      
    end
end
