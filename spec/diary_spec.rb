require './lib/diary.rb'

describe Diary do
  let ( :diary ) {Diary.new }

  describe '#add_entry' do

    it "diary responds to #add_entry" do
      expect(diary).to respond_to :add_entry
    end

    it "#add_entry throws an when diary is locked" do
      expect { diary.add_entry }.to raise_error 'Diary is locked'
    end
  end

  describe '#get_entries' do

    it "diary responds to #get_entries" do
      expect(diary).to respond_to :get_entries
    end

    it "#get_entries throws an when diary is locked" do
      expect { subject.get_entries }.to raise_error 'Diary is locked'
    end
  end

end
