require_relative '../lib/song.rb'
require 'rspec'

RSpec.describe Song do
    song = Song.new("Scared to Be Lonely", ["Martin Garrix", "Dua Lipa"])

    describe "#name" do
        it 'Check name' do
            expect(song.name).to eq ("Scared to Be Lonely")
        end
    end

    describe "#authors" do
        it 'Check authors' do
            expect(song.authors).to eq (["Martin Garrix", "Dua Lipa"])
        end
    end
end