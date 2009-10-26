Dado /^que tenho tipo de exercício cadastrado$/ do
  Factory :tipo_de_exercicio, :nome => "Jiujitsu"
  Factory :tipo_de_exercicio, :nome => "Ciclismo"
  Factory :tipo_de_exercicio
end

Dado /^que estou em "([^\"]*)"$/ do |page_name|
  #visit path_to(page_name)
  @browser.set_speed(2000)
  @browser.open path_to(page_name)
end

Dado /^selecione "([^\"]*)" em "([^\"]*)"$/ do |value, field|
  #select value, :from => field
  @browser.set_speed(2000)
  @browser.select '//*[@id=(//label[text()="'+field+'"]/@for)]', value
end

Dado /^selecione a hora com "([^\"]*)" de "([^\"]*)" de "([^\"]*)" as "([^\"]*)":"([^\"]*)" em "([^\"]*)"$/ do |dia, mes, ano, hora, minuto, input|

  xpath_1 = "//select[starts-with(@id, concat(//label[text()='"
  xpath_2 = "']/@for, '_"
  xpath_3 = "i') )]"
  @browser.set_speed(2000)
  @browser.type xpath_1 + input + xpath_2 + 3.to_s + xpath_3, dia
  @browser.type xpath_1 + input + xpath_2 + 2.to_s + xpath_3, mes
  @browser.type xpath_1 + input + xpath_2 + 1.to_s + xpath_3, ano
  @browser.type xpath_1 + input + xpath_2 + 4.to_s + xpath_3, hora
  @browser.type xpath_1 + input + xpath_2 + 5.to_s + xpath_3, minuto

end


Dado /^que preencho "([^\"]*)" com "([^\"]*)"$/ do |field, value|
  #fill_in(field, :with => value)
  @browser.set_speed(2000)
  @browser.type '//input[@id=(//label[text()="'+field+'"]/@for)]', value
end

Quando /^eu clicar em "([^\"]*)"$/ do |button|
  #click_button(button)
  @browser.set_speed(2000)
  @browser.click '//input[@value="'+button+'"]'
end

Então /^desejo ver a mensagem "([^\"]*)"$/ do |text|
  #response.should contain(text)
  @browser.set_speed(2000)
  assert @browser.is_text_present(text)
end

