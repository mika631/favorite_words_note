class UsersController < ApplicationController
  def show
    @username = current_user.name
    @words = Word.where(user_id: current_user.id)
  end
end
