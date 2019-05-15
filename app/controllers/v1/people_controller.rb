class V1::PeopleController < ApplicationController
  def index
    render json: Person.all, :meta => { :total => Person.all.count }, each_serializer: V1::PeopleSerializer
  end

  def show
    render json: Person.find(params[:id])
  end

end