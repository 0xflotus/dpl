describe Dpl::Providers::Cloud66 do
  let(:url) { 'https://hook.io/' }

  before { stub_request(:post, url).to_return(status: 200) }
  before { subject.run }

  describe 'given --redeployment_hook https://hook.io/' do
    it { assert_requested :post, url }
  end
end

