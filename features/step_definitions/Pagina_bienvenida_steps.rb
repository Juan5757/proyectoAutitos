Given("visito la pagina principal") do
    visit '/' # Write code here that turns the phrase above into concrete actions
  end
  
  Then("deberia ver un mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m # Write code here that turns the phrase above into concrete actions
  end