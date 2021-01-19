class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to cocktail_path
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
