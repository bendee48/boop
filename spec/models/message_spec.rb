require 'rails_helper'

RSpec.describe Message, type: :model do
  subject { build :message }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is invalid without a body" do
    subject.body = nil
    expect(subject).to be_invalid
  end

  it "is invalid without a user" do
    subject.user = nil
    expect(subject).to be_invalid
  end
end
