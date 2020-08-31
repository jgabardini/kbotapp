
When("inicio la aplicación") do
    visit '/0'
end
  
Then("en nombre de la app es {string}") do |nombre|
    expect(page).to have_selector 'h1#nombre', text: nombre
end

Then("inicio el chat") do
    click_button "Iniciar"
end
  
Then("el mensaje {int} es {string}") do |posicion,mensaje|
    expect(page).to have_selector "div#mensaje#{posicion}", text: mensaje
end

When("ingreso {string}") do |mensaje|
    fill_in "ingreso", with: mensaje
    click_button "Enviar"
end