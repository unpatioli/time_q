require "spec_helper"

RSpec.describe TimeQ::Query do
  subject { TimeQ::Query.new('a', 1, 3, 'vk') }

  it 'sets properties' do
    expect(subject.node_id).to eq 'a'
    expect(subject.start).to eq 1
    expect(subject.finish).to eq 4
    expect(subject.api_id).to eq 'vk'
  end

  it 'defines eql' do
    eql_q = TimeQ::Query.new('a', 1, 3, 'vk')
    not_eql_q = TimeQ::Query.new('b', 1, 3, 'vk')
    
    expect(subject).to eq(eql_q)
    expect(subject).to_not eq(not_eql_q)
  end

end
