class V1::PeopleController < ApplicationController
  def index
    render json: Person.all
  end

  def show
    render json: Person.find(params[:id])
  end

end