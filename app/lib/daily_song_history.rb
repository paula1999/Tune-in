require_relative 'song.rb'
require_relative 'postcode.rb'
require 'json'

class DailySongHistory
  include(POSTCODE)
  attr_reader :postal_code, :history

  def initialize(postal_code)
    @postal_code = postal_code
    @history = []
  end

  def get_history
    @history
  end

  def add_song(song) = @history << song

  def store_json(json)
    if json["postal_code"] != @postal_code
      raise ArgumentError, 'Código postal incorrecto'
    end

    for song in json["songs"]
      s = Song.new(song["name"], song["authors"])
      add_song(s)
    end
  end
end