
When("inicio la aplicacion") do
    visit '/'
end

Then("el titulo es {string}") do |titulo|
    expect(page).to have_css "h1", text: titulo
end

When("inicio el chat") do
    click_button "Iniciar"
end
  
Then("el mensaje {int} es {string}") do |id, mensaje|
    expect(page).to have_css "div#mensaje1", text: mensaje
end