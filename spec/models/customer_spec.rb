require 'spec_helper'

describe Customer do
  describe 'validations' do
    let(:blank) { [nil, '']}

    it { should have_valid(:name).when('Joe Customer')}
    it { should_not have_valid(:name).when(*blank) }

  end
end
