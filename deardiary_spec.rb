require 'date'
require_relative 'diary'

describe Diary do 
  let(:diary) { Diary.new({name:"Prince"}) }

  it 'should have a name' do
    expect(diary.name).to eq("Prince")
  end

  it 'should create a text file if one does not exist' do
    expect(File.exist?(diary.name+'.txt')).to eq true
  end

  it 'should #append the text file with the current date and user response' do
    diary.append("Wordsmith")
    entries = File.open(diary.name+'.txt').to_a
    expect(entries.last.chomp).to eq(Date.today.to_s+ ' | ' +"Wordsmith")
  end

  xit 'should encode user input' do
	
  end
  

  xit 'should decode encoded text file' do
  
  end

end
