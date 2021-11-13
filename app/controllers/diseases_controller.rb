class DiseasesController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @deseases = Desease.all
  end

  def search
    @results = @q.result
  end

  def show
  end

  private

  def set_q
    @q = Desease.ransack(params[:q])
  end

end
