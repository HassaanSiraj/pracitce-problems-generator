describe "#gcd" do
  it "computes gcd for common pairs" do
    expect(gcd(54, 24)).to eq(6)
    expect(gcd(24, 54)).to eq(6)
    expect(gcd(21, 14)).to eq(7)
  end

  it "handles zeros" do
    expect(gcd(0, 10)).to eq(10)
    expect(gcd(10, 0)).to eq(10)
    expect(gcd(0, 0)).to eq(0)
  end

  it "handles equal numbers" do
    expect(gcd(15, 15)).to eq(15)
  end
end


