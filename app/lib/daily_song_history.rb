require_relative 'song.rb'
require_relative 'postcode.rb'
require 'json'
require 'date'

class DailySongHistory
  include(POSTCODE)
  attr_reader :postal_code, :history

  def initialize(postal_code)
    @postal_code = PROVINCES[postal_code-1]
    @history = []
  end

  def add_song(song) = @history << song

  def store_json
    raise NotImplementedError
  end

  def get_top(percent)
    top = []
    read = []

    for elem in @history
      if !read.include?(elem) # Si no se ha leido la canción antes
        read.append(elem)
        c = @history.count(elem) # Contar el número de apariciones

        if c * 1.0/@history.size >= percent # Si supera el porcentaje indicado
          top.append(elem)
        end
      end
    end

    return top
  end

  def to_s
    for song in history
      puts song.to_s
    end
  end
end