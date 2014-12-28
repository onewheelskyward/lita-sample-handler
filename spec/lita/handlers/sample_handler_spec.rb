require_relative '../../spec_helper'

describe Lita::Handlers::SampleHandler, lita_handler: true do
  before(:each) do
    registry.configure do |config|
      config.handlers.sample_handler.element = 'stuff'
    end
  end

  it { is_expected.to route('!execute') }

  it '!execute' do
    send_message '!execute'
    expect(replies.last).to eq('yeah')
  end
end
