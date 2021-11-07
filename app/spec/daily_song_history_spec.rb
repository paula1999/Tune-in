require_relative '../lib/daily_song_history.rb'
require_relative '../lib/song.rb'
require 'rspec'
require 'json'

RSpec.describe DailySongHistory do
    song = Song.new("Wake me up", ["Avicii"])
    song2 = Song.new("Scared to Be Lonely", ["Martin Garrix", "Dua Lipa"])
    song3 = Song.new("Regardless", ["RAYE", "Rudimental"])
    song4 = Song.new("Something Just Like This", ["Coldplay", "The Chainsmokers"])

    describe "#add" do
        it 'add songs to history' do 
            dailySongHistory = DailySongHistory.new(18)
            dailySongHistory.add_song(song)
            history = dailySongHistory.history

            expect(history[0].name).to eq (song.name)
            expect(history[0].authors).to eq (song.authors)
        end
    end

    describe "#addJSON" do
        it 'add songs to history with JSON' do
            dailySongHistory = DailySongHistory.new(18)
            file = File.read('app/data/song_history.json')
            dailySongHistory.store_json(JSON.parse(file))
            songs = [song, song2, song3, song4]
            history = dailySongHistory.history

            for i in 0..history.size-1
                expect(history[i].name).to eq (songs[i].name)
                expect(history[i].authors).to eq (songs[i].authors)
            end
        end
    end
end
