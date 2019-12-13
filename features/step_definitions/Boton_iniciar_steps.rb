Given("estoy en la pagina principal") do
  visit '/' # Write code here that turns the phrase above into concrete actions
end

When("presiono el boton con nombre {string}") do |string|
  click_button(string)# Write code here that turns the phrase above into concrete actions
end

Then("deberia ir a la pagina TERRENO") do
  visit '/Terreno' # Write code here that turns the phrase above into concrete actions
end