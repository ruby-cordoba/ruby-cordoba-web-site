require 'spec_helper'

describe User do
  let(:user) { build(:user) }

  it 'has a valid factory' do
    expect(user).to be_valid
  end

  describe 'validates email' do
    let(:user) { build(:user, email: email) }

    context 'invalid' do
      ['foo.bar', ''].each do |email|
        let(:email) { email }
        specify { expect(user).to_not be_valid }
      end
    end

    context 'valid' do
      ['foo@bar.com', 'foo.bar@baz.com.ar'].each do |email|
        let(:email) { email }
        specify { expect(user).to be_valid }
      end
    end
  end

  describe 'validates password' do
    let(:user) { build(:user,
                       password: password,
                       password_confirmation: password_confirmation) }

    context 'invalid' do
      ['123', ''].each do |password|
        let(:password) { password }
        let(:password_confirmation) { password }
        specify { expect(user).to_not be_valid }
      end
    end

    context 'valid' do
      ['secret', '123456'].each do |password|
        let(:password) { password }
        let(:password_confirmation) { password }
        specify { expect(user).to be_valid }
      end
    end
  end
end

