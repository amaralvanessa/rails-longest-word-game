class GamesController < ApplicationController
  def new
    vogals = ["A","E","I","O","U"].sample(5)
    @letters = []
    @letters += vogals
    @letters += Array.new(5) { (("A".."Z").to_a - vogals).sample }
    @letters.shuffle!
  end

  def score
    @word = params[:word]
  end
end
