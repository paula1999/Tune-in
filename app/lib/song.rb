class Song
  attr_reader :name, :authors

  def initialize(name, authors)
    @name = name
    @authors = authors
    freeze
  end
end