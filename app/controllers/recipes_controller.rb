class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @category_id = params[:category_id]
    if @category_id.present?
      @recipes = Recipe.where(category_id: @category_id)
    else
      @recipes = Recipe.all
    end
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

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.user_id == current_user.id
      @recipe.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to root_path
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :explain, :category_id, :content, :image).merge(user_id: current_user.id)
  end

end
