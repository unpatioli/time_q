require "spec_helper"

RSpec.describe TimeQ do
  it "has a version number" do
    expect(TimeQ::VERSION).not_to be nil
  end

  context "parser" do
    before :each do
      @arr = ["a\tb\tc", "d\te\tf"]
    end

    it 'parses array' do
      res = TimeQ::parse(@arr)
      expect(res).to eq [["a", "b", "c"], ["d", "e", "f"]]
    end
  end

end
