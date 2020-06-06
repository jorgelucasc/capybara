describe "Drag and Drop", :drop do
  before(:each) do
    visit "/drag_and_drop"
  end

  it "Movendo card" do

    #cap = find('img[alt$=Aranha] .column')
    stark = find(".team-stark .column") #Elemento que receberá a imagem
    spiderman = find("img[alt$=Aranha]") #Elemento que será trocado de posição

    spiderman.drag_to stark
    sleep 3
  end
end
