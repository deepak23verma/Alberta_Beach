require 'spec_helper'

describe Registrant do
  it "has a valid factory" do
    expect(build(:registrant)).to be_valid
  end
  it "is invalid without first_name" do
    expect(build(:registrant, first_name: nil)).to have(1).errors_on(:first_name)
  end
  it "is invalid without last_name" do
    expect(build(:registrant, last_name: nil)).to have(1).errors_on(:last_name)
  end
  it "is invalid without age_group" do
    expect(build(:registrant, age_group: nil)).to have(1).errors_on(:age_group)
  end
  it "is invalid without how_heard" do
    expect(build(:registrant, how_heard: nil)).to have(1).errors_on(:how_heard)
  end
  it "is invalid without email" do
    expect(build(:registrant, email: nil)).to have(2).errors_on(:email)
  end
  it "is invalid with a duplicate email address" do
    create(:registrant, email: 'john@example.com')
    expect(build(:registrant, email: 'john@example.com')).to have(1).errors_on(:email)
  end
  it "is invalid with an improperly formatted email" do
    expect(build(:registrant, email: 'hello')).to have(1).errors_on(:email)
  end
end