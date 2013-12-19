require 'spec_helper'

describe Art do
  describe 'validations' do
    let(:blank) { [nil, '']}
    let(:boolean) { [true, false]}

    it { should have_valid(:title).when('Mona Lisa')}
    it { should_not have_valid(:title).when(*blank) }

    it { should have_valid(:artist_id).when(1)}
    it { should_not have_valid(:artist_id).when(*blank) }

    it { should have_valid(:art_type_id).when(1)}
    it { should_not have_valid(:art_type_id).when(*blank) }

    #it { should have_valid(:available_for_purchase).when(boolean)}
    it { should_not have_valid(:available_for_purchase).when(*blank) }

    it { should have_valid(:collection_id).when(1)}
    it { should_not have_valid(:collection_id).when(*blank) }

  end

  describe 'associations' do

    it { should belong_to(:artist).dependent(:destroy) }
    it { should belong_to(:art_type).dependent(:destroy) }
    it { should belong_to(:collection).dependent(:destroy) }

end
    # it 'returns an artist name for a particular piece of art'
    #     artist = Artist.create!(name: 'Da Vinci')
    #     photograph = Art_type.create!(name: 'photograph')
    #     collection = 
    #     painting = Art.create!(title: 'The Mona Lisa', )
end
