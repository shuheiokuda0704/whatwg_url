RSpec.describe WhatwgUrl do
  it "has a version number" do
    expect(WhatwgUrl::VERSION).not_to be nil
  end

  #describe 'initializer' do
  #  it "parses by initializer " do
  #    url = WhatwgUrl('http://www.google.com/index.html?a=b&c=d')
  #    # expect(url.class).to eq(WhatwgUrl::HTTP)
  #    expect(url.scheme).to eq('http')
  #    expect(url.userinfo).to eq(nil)
  #    expect(url.host).to eq('www.google.com')
  #    expect(url.port).to eq(80)
  #    expect(url.registry).to eq(nil)
  #    expect(url.path).to eq('/index.html')
  #    expect(url.opaque).to eq(nil)
  #    expect(url.query).to eq('a=b&c=d')
  #    expect(url.fragment).to eq(nil)
  #  end
  #end

  describe 'parse method' do
    it "parses by parse method" do
      url = WhatwgUrl.parse('http://www.google.com/index.html?a=b&c=d')
      expect(url.class).to eq(WhatwgUrl::HTTP)
      expect(url.scheme).to eq('http')
      expect(url.userinfo).to eq(nil)
      expect(url.host).to eq('www.google.com')
      expect(url.port).to eq(80)
      expect(url.registry).to eq(nil)
      expect(url.path).to eq('/index.html')
      expect(url.opaque).to eq(nil)
      expect(url.query).to eq('a=b&c=d')
      expect(url.fragment).to eq(nil)
    end
  end
end
