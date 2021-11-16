class KartesController < ApplicationController
  def index
    @kartes = Karte.all
  end

  def new
    @karte = Karte.new
  end

  def show
    @karte = Karte.find(params[:id])
  end

  def create
    Karte.create(karte_params)
    redirect_to new_karte_path
  end

  private
  def karte_params
    params.require(:karte).permit(:karte_number, :patient_number, :s, :o, :a, :p)
  end
end
