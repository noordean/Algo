require_relative "../node"

describe Node do
  it "has correct data value" do
    expect(Node.new(4).data).to eq(4)
  end

  it "initializes next to nil" do
    expect(Node.new(4).next).to eq(nil)
  end
end
