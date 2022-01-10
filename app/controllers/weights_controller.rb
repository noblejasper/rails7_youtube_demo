class WeightsController < ApplicationController
    before_action :set_rabbit
    before_action :set_weight, only: [:destroy]
    def create
        @rabbit.weights.create! params.require(:weight).permit(:gram)
        redirect_to @rabbit
    end

    def destroy
        @weight.destroy
        redirect_to @rabbit
    end

    private 
    def set_rabbit
        @rabbit = Rabbit.find(params[:rabbit_id])
    end

    def set_weight
        @weight = @rabbit.weights.find(params[:id])
    end
end
