class WordsController < ApplicationController

  def index
    @words = Word.all
    @random = Word.order("Rand()").limit(2)
  end

  def new
    @word = Word.new
    
  end

  def show
    @word = Word.find(params[:id])
    @wordcreater = Wordcreater.find_by(id: @word.wordcreater.id)
    @user = User.find_by(id:@wordcreater.user_id)
  end

end
