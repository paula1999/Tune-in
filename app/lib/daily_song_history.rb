class DailySongHistory
  include(POSTCODE)
  attr_reader :province, :history

  def initialize(province)
    @province = province
    @history = []
  end

  def add_song(song) = @history << song

  def store_json
    raise NotImplementedError
  end
end
