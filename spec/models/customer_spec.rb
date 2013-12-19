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

end
