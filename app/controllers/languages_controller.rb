class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end

  def new
    @language = Language.new
  end

  def create
    Language.create!(language_params)
    redirect_to action: :index
  end

  def edit
    @language = Language.find(params[:id])
  end

  def destroy
    language = Language.find(params[:id])
    language.destroy
    redirect_to action: :index
  end

  def update
    language = Language.find(params[:id])
    language.update(language_params)
    redirect_to action: :index
  end

  private

  def language_params
    params.require(:language).permit(:content)
  end
end
