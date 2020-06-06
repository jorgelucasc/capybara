describe "Ids dinamicos", :id2 do
  before(:each) do
    visit "/access"
  end

  it "novo cadastro" do
    #busco um elemento onde o '$' final termine com UsernameInput
    #busco um elemento onde '^' comece com UsernameInput
    #busco um elemento onde '' contem UsernameInput
    find("input[id$=UsernameInput]").set "lucas"
    find("input[id^=PasswordInput]").set "lucas"
    find("a[id*=GetStartedButton]").click
  end
end
