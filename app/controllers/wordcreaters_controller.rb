class WordcreatersController < ApplicationController

  def index
    @wordcreaters = Wordcreaters.all
  end

  def new
    @wordcreater = Wordcreater.new
    @wordcreater.words.build
  end


  def create
    @wordcreater = Wordcreater.new(wordcreater_params)
    @wordcreater.save
    redirect_to root_path
  end


  private
    def wordcreater_params
      params.require(:wordcreater).permit(:id, :name, words_attributes:[:id, :word, :image, :genre_id, :condition])
    end








end
