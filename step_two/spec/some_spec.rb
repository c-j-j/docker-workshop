RSpec.describe "Some specs" do
  it 'does something existing' do
    expect('exciteement').to include('excite')
  end

  it 'can do the most cleverest things' do
    expect(1).to eq(1)
  end

  it 'can fail' do
    expect('docker').to eq('vagrant')
  end
end
