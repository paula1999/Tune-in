require_relative '../lib/daily_song_history.rb'
require_relative '../lib/song.rb'
require 'rspec'
require 'json'

RSpec.describe DailySongHistory do
    song = Song.new("Wake me up", ["Avicii"])
    song2 = Song.new("Scared to Be Lonely", ["Martin Garrix", "Dua Lipa"])
    song3 = Song.new("Regardless", ["RAYE", "Rudimental"])
    song4 = Song.new("Something Just Like This", ["Coldplay", "The Chainsmokers"])

    describe "#top_25" do
        it 'top 25% songs in history' do
            dailySongHistory = DailySongHistory.new(18)

            # Añado canciones

            for i in 1..5 do
                dailySongHistory.add_song(song)
            end

            for i in 1..4 do
                dailySongHistory.add_song(song2)
            end

            for i in 1..8 do
                dailySongHistory.add_song(song3)
            end

            for i in 1..3 do 
                dailySongHistory.add_song(song4)
            end

            # Calculo el 25% de las canciones más escuchadas
            top = dailySongHistory.get_top(0.25)

            expect(top[0].to_s).to eq (song.to_s)
            expect(top[1].to_s).to eq (song3.to_s)
        end
    end
end
