describe "iframes" do
  describe "iframebom" do
    before(:each) do
      visit "/nice_iframe"
    end

    it "adicionando produto" do
      within_frame("burgerId") do
        produto = find(".menu-item-info-box", text: "REFRIGERANTE")
        produto.find("a").click
        expect(find('#cart')).to have_content 'R$ 4,50'
      end
    end
  end
end
