require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build :user }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is invalid without a username" do
    subject.username = nil
    expect(subject).to be_invalid
  end

  it "is invalid if username is too short" do
    subject.username = 'po'
    expect(subject).to be_invalid
  end

  it "is invalid if username is too long" do
    subject.username = 'usermcusersonusernamenameuser'
    expect(subject).to be_invalid
  end

  it "is invalid if username is not unique" do
    user1 = create :user, username: "emma"
    user2 = build :user, username: "emma"
    expect(user2).to be_invalid
  end

  it "is invalid if username is not unique regardless of case" do
    user1 = create :user, username: "emma"
    user2 = build :user, username: "Emma"
    expect(user2).to be_invalid
  end

  it "is invalid without a password" do
    subject.password = nil
    expect(subject).to be_invalid
  end
end
