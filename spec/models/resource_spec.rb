require 'rails_helper'

RSpec.describe Resource, type: :model do
  subject {
    Resource.create(long_url: "https://www.long.url/this-is/a-long-url", short_url: "ssdfe3dfjl");
  }

  before {
    subject.save
  }

  it 'resource subject is valid with valid attributes' do
    expect(subject).to be_valid 
  end 

  describe 'check for validations' do
    it 'invalidate without long_url' do
      subject.long_url = ''
      expect(subject).to_not be_valid
    end

    it 'invalidate with short_url longer than 16 characters' do
      subject.short_url = 'a'*17
      expect(subject).to_not be_valid
    end

    it 'validate without short_url' do
      subject.short_url = ''
      expect(subject).to be_valid
    end

    it 'validate with two word alias short_url' do
      subject.short_url = 'wuletaw wonte'
      expect(subject).to be_valid
    end
  end
end
