require_relative '../lib/daily_song_history.rb'
require_relative '../lib/song.rb'
require 'rspec'
require 'json'

RSpec.describe DailySongHistory do
    dailySongHistory = DailySongHistory.new("18003")
    song = Song.new("Wake me up", ["Avicii"])
    song2 = Song.new("Scared to Be Lonely", ["Martin Garrix", "Dua Lipa"])

    describe "#add" do
        it 'add songs to history' do
            file = File.read('app/data/song_history.json')
            dailySongHistory.store_json(JSON.parse(file))
            songs = [song, song2]
            history = dailySongHistory.get_history()

            for i in 0..history.size-1
                expect(history[i].name).to eq (songs[i].name)
                expect(history[i].authors).to eq (songs[i].authors)
            end
            
        end
    end

end
