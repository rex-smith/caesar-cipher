#spec/caesar_cipher_2_spec.rb
require './lib/caesar_cipher_2'

describe '#caesar_cipher' do
  it "returns a forward shifted string" do
    expect(caesar_cipher('dictionary', 18)).to eql('vaulagfsjq')
  end
  
  it "returns a backward shifted string" do
    expect(caesar_cipher('dictionary', -18)).to eql('lqkbqwvizg')
  end

  it "returns a forward shifted string including spaces" do
    expect(caesar_cipher('hi john and karen', 30)).to eql('lm nslr erh oevir')
  end

  it "returns a backward shifted string including spaces" do
    expect(caesar_cipher('hi john and karen', -30)).to eql('de fkdj wjz gwnaj')
  end
end
