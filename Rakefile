require 'rspec/core/rake_task'

desc 'Tarea para instalar las dependencias necesarias'
task :installdeps do 
    puts 'Instalando las dependencias...'
    exec 'bundle install'
end

desc 'Tarea para ejecutar testear el funcionamiento del codigo'
RSpec::Core::RakeTask.new(:test) do |t|
    t.pattern = "app/spec/daily_song_history_spec.rb"
  end

desc 'Tarea para comprobar la sintaxis de las entidades programadas'
task :check do
    puts 'Comprobando la sintaxis de las entidades...'
    exec 'ruby -c app/lib/*'
end