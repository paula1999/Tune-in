class Song
  attr_reader :name, :authors

  def initialize(name, authors)
    @name = name
    @authors = authors
    freeze
  end

  def to_s
    return "Name: #{@name}, \t Authors: #{@authors}"
  end
end