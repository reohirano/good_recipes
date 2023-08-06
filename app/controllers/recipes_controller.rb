class RecipesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @recipes = Recipe.all
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :explain, :category.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
