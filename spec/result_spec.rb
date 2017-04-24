require "spec_helper"

describe Randomizer::RandomizerActiveRecordMethods do

  describe "#get" do

    it "randomizes" do
      binding.pry
      expect(Randomizer::RandomizerActiveRecordMethods.get).not_to be_nil
    end
  end
end
