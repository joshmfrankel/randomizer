require "spec_helper"

describe Randomizer::Result do
  it "randomizes" do
    expect(Randomizer::Result.grab).not_to be_nil
  end
end
