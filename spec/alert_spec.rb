describe "Validando Alertas", :alerts do
  #definido a pagina padrao para este spec
  before(:each) do
    visit "/javascript_alerts"
  end
  #clicando no botão Alerta, e setando uma váriavel que irá obter o texto após clicar no botão
  #depois irá validar se o conteudo de msg é igual ao passado no eql
  it "alerta" do
    click_button "Alerta"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Isto é uma mensagem de alerta"
  end

  it "confirmando" do
    click_button "Confirma"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Mensagem confirmada"
  end

  it "não confirmada" do
    click_button "Confirma"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Mensagem não confirmada"
  end

  it "prompt" do
    accept_prompt(with: "Lucas") do
      click_button "Prompt"
    end
  end

  it "dismiss prompt" do
    dismiss_prompt do
      click_button "Prompt"
    end
  end
end
