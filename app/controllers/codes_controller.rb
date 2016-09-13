class CodesController < ApplicationController

  def index
    @codes = []
    Code.pluck(:language).uniq.each do |language|
      @codes << Code.where(language: language).order("RANDOM()").first
    end
    @code = Code.order("RANDOM()").first
  end

  def show
    @code = Code.find(params[:id])
  end

end
