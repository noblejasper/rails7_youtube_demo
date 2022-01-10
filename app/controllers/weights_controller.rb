class WeightsController < ApplicationController
    before_action :set_rabbit
    def create
        @rabbit.weights.create! params.require(:weight).permit(:gram)
        redirect_to @rabbit
    end

    private 
    def set_rabbit
        @rabbit = Rabbit.find(params[:rabbit_id])
    end
end
