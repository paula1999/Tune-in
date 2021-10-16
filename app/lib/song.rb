class Song
  attr_reader :nombre, :autores

  def initialize(nombre, autores)
    @nombre = nombre
    @autores = autores
    freeze
  end
end
