class V1::CatsController < ApplicationController

  def index
    render json: Cat.all, :meta => { :total => Cat.all.count }, each_serializer: V1::CatsSerializer
  end

  def show
    render json: Cat.find([params[:id]])
  end

end