class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(9)
  end

  def score
    # 1. The attempt is not in the letters grid >> "Sorry but ..."
    @attempt = params[:attempt] # kyp
    @letters = params[:letters].split(" ") # ATTENTION STRING !!! => split avec " "
    @attempt_array = @attempt.split("") # ["k", "y", "p"]
    @attempt_array.each do |letter|
       letter
      if @letters.include?(letter)
        @answer = "Yeah all your letters are in the grid !"
      else
        @answer = "Sorry but #{@attempt.upcase} can't be built out of #{@letters.join(", ")}"
      end
    end

  end

  # def is_in_grid?
  #   true or false
  # end

end
