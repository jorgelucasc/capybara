#projeto capybara do zero
describe "meu primeiro script" do
  it "Visitar a pagina" do
    visit "/"
    puts page.title
    expect(page.title).to eql "Training Wheels Protocol"
  end
end
