require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.shuffle[0..9]

  end

  def score
    @word = params[:word]
    @result = english_word(@word)
  end


  private
  def english_word(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
    user["found"]
  end

  def valid_letters(word)
   

  end

end
