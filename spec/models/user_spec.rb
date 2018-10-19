require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'Should detect email' do
      user = User.new(password: 'some_password_to_test').save
      expect(user).to eq(false)
    end

    it 'Should detect password' do
      user = User.new(email: 'someone@example.com').save
      expect(user).to eq(false)
    end

    let (:user) do
      user = User.new(
        email: 'someone@example.com',
        password: 'some_password_to_test')
      user.save
      user
    end

    it 'Should permit update the user' do
      expect(user.update!(name: 'someone')).to eq(true)
    end
  end
end
