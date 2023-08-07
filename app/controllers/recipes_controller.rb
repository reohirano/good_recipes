class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :explain, :category_id).merge(user_id: current_user.id)
  end

end
