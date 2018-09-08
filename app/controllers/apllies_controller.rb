class AplliesController < ApplicationRecord
    def index
        @apllies = Aplly.all
    end

    def show
        @apllies = Aplly.find(params[:id])
    end

    def new
        @apllies = Aplly.new
    end

    def create
        @apllies = Aplly.new(title: params[:aplly][:title],
                            body: params[:aplly][:body],
                            name: params[:aplly][:name],
                            edad: params[:aplly][:edad])
                            prod = Apply.new
        prod.productor params[:apply][:title],params[:apply][:body],params[:apply][:name]
        @apllies.save
        redirect_to @apllies
    end
end