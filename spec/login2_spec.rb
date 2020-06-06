describe "Login Dinamico", :login2 do
  before(:each) do
    visit "/login2"
  end

  it "data" do
    find("#userId").set "stark"
    find("#passId").set "jarvis!"

    login = find("#login")

    case login.text
    when /Dia/
      find("#day").set "29"
    when /Mês/
      find("#month").set "05"
    when /Ano/
      find("#year").set "1970"
    end
    sleep 3

    click_button "Login"

    expect(page).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end
