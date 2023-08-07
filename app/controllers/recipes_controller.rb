class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @recipes = Recipe.all
  end

  def new
    @recipes = Recipe.new
  end

  def create
    @recipes = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :explain, :category_id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
