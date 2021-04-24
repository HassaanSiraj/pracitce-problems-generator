describe "#balanced_parentheses?" do
  it "returns true for balanced parentheses" do
    expect(balanced_parentheses?("(())")).to be true
    expect(balanced_parentheses?("a(b(c)d)e")).to be true
  end

  it "returns false for unbalanced parentheses" do
    expect(balanced_parentheses?("(()")).to be false
    expect(balanced_parentheses?(")(")).to be false
    expect(balanced_parentheses?("())(")).to be false
  end
end


