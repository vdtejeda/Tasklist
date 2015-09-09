require 'rails_helper'

RSpec.describe Task, type: :model do
  it "should have valid factory" do
      FactoryGirl.build(:task).should be_valid
  end

  it "should require a username" do
      FactoryGirl.build(:task, :content => "").should_not be_valid
  end
end
