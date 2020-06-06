describe "Select Simples", :select do
  before(:each) do
    visit "/apps/select2/single.html"
  end

  it "Seleção Simples" do
    tr = find(".select2-container")
    tr.click
    find(".select2-results__option", text: "Adam Sandler").click

    sleep 3
  end
end
