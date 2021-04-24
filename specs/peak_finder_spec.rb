describe "#peak_finder" do
  it "finds a single interior peak" do
    expect(peak_finder([1, 2, 3, 2, 1])).to eq([2])
  end

  it "handles equal neighbors (not a peak if equal)" do
    expect(peak_finder([1, 2, 3, 3, 2])).to eq([1])
  end

  it "treats ends as peaks when appropriate" do
    expect(peak_finder([3, 2, 1])).to eq([0])
    expect(peak_finder([1, 2, 3])).to eq([2])
  end

  it "returns multiple peaks in order" do
    expect(peak_finder([1, 3, 2, 4, 1, 5, 4])).to eq([1, 3, 5])
  end
end


