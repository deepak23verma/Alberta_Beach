require 'spec_helper'

describe Registrant do
  it "is valid with a first_name, last_name, age_group, how_heard and email" do
    registrant = Registrant.new(
      first_name: 'John',
      last_name: 'Doe',
      age_group: '1',
      how_heard: 'Your Mom',
      email: 'john@example.com')
    expect(registrant).to be_valid
  end
  it "is invalid without first_name" do
    expect(Registrant.new(first_name: nil)).to have(1).errors_on(:first_name)
  end
  it "is invalid without last_name" do
    expect(Registrant.new(last_name: nil)).to have(1).errors_on(:last_name)
  end
  it "is invalid without age_group" do
    expect(Registrant.new(age_group: nil)).to have(1).errors_on(:age_group)
  end
  it "is invalid without how_heard" do
    expect(Registrant.new(how_heard: nil)).to have(1).errors_on(:how_heard)
  end
  it "is invalid without email" do
    expect(Registrant.new(email: nil)).to have(2).errors_on(:email)
  end
  it "is invalid with a duplicate email address" do
    Registrant.create(first_name: 'John', last_name: 'Doe', age_group: '1',
      how_heard: 'Your Mom', email: 'john@example.com')
    expect(Registrant.new(email: 'john@example.com')).to have(1).errors_on(:email)
  end
  it "is invalid with an improperly formatted email" do
    expect(Registrant.new(email: 'hello')).to have(1).errors_on(:email)
  end
end