RSpec.describe UrlTrackingApiClient::Tracking do
  subject { described_class }

  it 'calls to `URL_TRACKING_API_URL`' do
    expect(TinyClient::CurbRequestor).to receive(:perform_post) do |url, headers, content|
      expect(url).to eq('https://url-tracking.tinypulse.com/trackings.json')
      expect(headers).to include({ 'Authorization': 'token' })
      expect(JSON.parse(content)['tracking']).to include('url', 'receiver_id', 'organization_id')
    end.and_return(double(parse_body: ''))

    subject.create(url: 'url', receiver_id: 1, organization_id: 2)
  end
end
