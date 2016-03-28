require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#email' do
    let(:user) { User.new }

    it 'should exist' do
      expect(user.attributes).to include("email")
    end
  end
end
