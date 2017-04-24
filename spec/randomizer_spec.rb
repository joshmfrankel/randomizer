require "spec_helper"

class Mock < ActiveRecord::Base
end

class RandomizerBucket < ActiveRecord::Base
end

describe Randomizer do
  it "has a version number" do
    expect(Randomizer::VERSION).not_to be_nil
  end

  describe "#find_random" do

    it "is a valid method" do
      expect(Mock).to respond_to(:find_random)
    end

    it "returns a single result" do
      m1 = Mock.create(name: "First")
      m2 = Mock.create(name: "Second")
      m3 = Mock.create(name: "Third")

      expect(Mock.find_random.size).to eq 1
    end

    it "returns the same result once a result is returned" do
      m1 = Mock.create(name: "First")
      m2 = Mock.create(name: "Second")
      m3 = Mock.create(name: "Third")

      result1 = Mock.find_random
      binding.pry
      # expect(Mock.find_random.size).to eq 1
    end
  end
end
