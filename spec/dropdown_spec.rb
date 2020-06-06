describe "Caixa de selecao" do
  it "item especifico" do
    visit "/dropdown"
    select("Loki", from: "dropdown")
  end

  it "item composto" do
    visit "dropdown"
    drop = find(".avenger-list")
    drop.find("option", text: "Bucky").select_option
  end

  it "Sort Item" do
    visit "dropdown"
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
  end
end
