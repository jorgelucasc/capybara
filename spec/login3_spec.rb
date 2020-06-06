describe "Login Dinamico", :login3 do
  before(:each) do
    visit "/access"
  end
  #simulando um caso onde o mesmo campo aparece 2 vezes com mesmo seletor css

  it "logando com sucesso" do
    login_form = find("#login")

    #buscando um input, com atributo e valor do atributo
    login_form.find("input[name=username]").set "stark"
    login_form.find("input[name=password]").set "jarvis!"

    click_button "Entrar"
  end

  it "logando com sucesso2" do
    within("#login") do
      find("input[name=username]").set "stark"
      find("input[name=password]").set "jarvis!"

      click_button "Entrar"
    end
  end
end
