describe "Upload", :upload do
  before(:each) do
    visit "/upload"
    @arquivo = Dir.pwd + "/spec/fixtures/arquivo.txt"
    @imagem = Dir.pwd + "/spec/fixtures/imagem.png"
  end

  it "Adicionando Arquivo txt" do
    attach_file("file-upload", @arquivo)
    click_button "Upload"

    meu_arquivo = find("#uploaded-file")
    expect(meu_arquivo.text).to eql "arquivo.txt"
  end

  it "Adicionando a foto" do
    attach_file("file-upload", @imagem)
    click_button "Upload"

    img = find("#new-image")
    expect(img[:src]).to include "/uploads/imagem.png"
  end
end
