require "spec_helper"

RSpec.describe TimeQ do
  it "has a version number" do
    expect(TimeQ::VERSION).not_to be nil
  end

  context "parser" do
    before :each do
      @arr = ["a\t1\t2\tya", "b\t3\t4\tvk"]
    end

    it 'parses array' do
      res = TimeQ::parse(@arr)
      expect(res).to eq [TimeQ::Query.new('a', 1, 2, 'ya'), TimeQ::Query.new('b', 3, 4, 'vk')]
    end
  end

  context 'counter' do
    context 'counts queries to' do
      it 'one API' do
        queue = [
          "A\t2\t5\tvk",
          "B\t9\t7\tvk",
          "C\t15\t6\tvk",
          "D\t9\t3\tvk",
        ]

        expect(TimeQ.max_queries(queue)).to eq 3
      end
    end
  end

end
