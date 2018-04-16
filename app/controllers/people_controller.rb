class PeopleController < ApplicationController 

  def new
    @person = Person.new 
  end

  def create
    @person = Person.create(person_params)
    render json: @person, status: 201
  end

  def show
    @person = Person.find(params[:id]) 
    render json: @person
  end

  def index
    @people = Person.all 
    render json: @people
  end 

  private

  def person_params
    params.permit(:id, :name, :description, :location, reviews_attributes: [:star_rating, :description, :user_id]) 
  end
end
