require 'spec_helper'

describe Art do
  describe 'validations' do
    let(:blank) { [nil, '']}
    let(:boolean) { [true, false]}

    it { should have_valid(:title).when('Mona Lisa')}
    it { should_not have_valid(:title).when(*blank) }

    it { should have_valid(:artist).when(Artist.new)}
    it { should_not have_valid(:artist).when(nil) }

    it { should have_valid(:art_type).when(ArtType.new)}
    it { should_not have_valid(:art_type).when(nil) }

    #it { should have_valid(:available_for_purchase).when(boolean)}
    it { should_not have_valid(:available_for_purchase).when(*blank) }

    it { should have_valid(:collection).when(Collection.new)}
    it { should_not have_valid(:collection).when(nil) }

  end

  describe 'associations' do

    it { should belong_to(:artist) }
    it { should belong_to(:art_type) }
    it { should belong_to(:collection) }

end
    # it 'returns an artist name for a particular piece of art'
    #     artist = Artist.create!(name: 'Da Vinci')
    #     photograph = Art_type.create!(name: 'photograph')
    #     collection = 
    #     painting = Art.create!(title: 'The Mona Lisa', )
end
