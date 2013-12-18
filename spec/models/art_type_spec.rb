require 'spec_helper'

describe ArtType do
 describe validations do
    let(:blank) { [nil, '']}

    it { should have_valid(:name).when('Photograph')}
    it { should_not have_valid(:title).when(*blank) }

  end
end
