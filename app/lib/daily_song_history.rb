class DailySongHistory
  include(POSTCODE)
  attr_reader :postal_code, :history

  def initialize(postal_code)
    @postal_code = postal_code
    @history = []
  end

  def add_song(song) = @history << song

  def store_json
    raise NotImplementedError
  end
end
