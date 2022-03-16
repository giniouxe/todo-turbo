require 'rails_helper'

RSpec.describe Action, type: :model do
  it { expect(described_class.new.done).to eq(false) }

  describe '#valid?' do
    it { expect(described_class.new(description: nil)).not_to be_valid }
    it { expect(described_class.new(description: '')).not_to be_valid }
    it { expect(described_class.new(description: 'lol')).to be_valid }
  end
end
