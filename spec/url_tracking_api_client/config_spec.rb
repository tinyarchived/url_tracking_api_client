RSpec.describe UrlTrackingApiClient::Config do
  subject { described_class.instance }

  it { is_expected.to be_a_kind_of(TinyClient::Configuration) }
end
