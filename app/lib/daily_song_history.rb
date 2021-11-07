require_relative 'song.rb'
require_relative 'postcode.rb'
require 'json'

class DailySongHistory
  include(POSTCODE)
  attr_reader :postal_code, :history

  def initialize(postal_code)
    @postal_code = PROVINCES[postal_code-1]
    @history = []
  end

  def add_song(song) = @history << song

  def store_json(json)
    for user in json["users"]
      if user["postal_code"] == @postal_code.to_s
        for song in user["songs"]
          s = Song.new(song["name"], song["authors"])
          add_song(s)
        end
      end 
    end
  end

  def to_s
    for song in history
      puts song.to_s
    end
  end
end            