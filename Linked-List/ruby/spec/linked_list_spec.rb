require_relative "../linked_list"

describe LinkedList do
  it "prepends to the list" do
    list = LinkedList.new

    expect {
      list.prepend(8)
    }.to change { list.size }.from(1).to(2)
    expect(list[0].data).to eq(8)
    expect(list[1].data).to eq(1)
  end

  it "appends to the list" do
    list = LinkedList.new

    expect {
      list.append(7)
    }.to change { list.size }.from(1).to(2)

    list.append(20)

    expect(list[0].data).to eq(1)
    expect(list[1].data).to eq(7)
    expect(list[2].data).to eq(20)
  end
end
