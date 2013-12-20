require 'spec_helper'

describe Customer do
  describe 'validations' do
    let(:blank) { [nil, '']}

    it { should have_valid(:name).when('Joe Customer')}
    it { should_not have_valid(:name).when(*blank) }

  end

  describe 'associations' do 

    it { should have_many(:arts) }
    it { should have_many(:customer_collections) }
    it { should have_many(:collections).through(:customer_collections) }

  end

   describe 'methods' do

    it 'subtotals a customers total sales' do

     ryan = Customer.create!(name: 'Ryan')
     van_gogh = Artist.create!(name: 'Van Gogh')
     impression = ArtType.create!(name: 'Impression')
     french = Collection.create!(name: 'french')

     ryansart = Art.create!(title: 'waterlillies', artist_id: van_gogh.id, art_type_id: impression.id, cost_in_cents: 100000, available_for_purchase: true, customer_id: ryan.id, collection_id: french.id)

     expect(ryan.total_spent).to eql(1000)

   end

  end

end
