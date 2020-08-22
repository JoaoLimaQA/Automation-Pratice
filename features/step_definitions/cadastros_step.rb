Dado("que estou no site") do
    @cadastro_page.go
end 

Quando("clico o Sing in") do
    @cadastro_page.sing_in
end
  
Então("digito um email {string}") do |email|
  @cadastro_page.create(email)
end

Dado("que coloco meus {string} pessoais") do |info|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixture/dados.yaml"))
  @dados = file[info]
  @cadastro_page.data(@dados)
end

Quando("clico no botão Register") do
 @cadastro_page.finish
end

Então("vejo a menssagem {string}") do |confirm|
  menssagem = find(".info-account").text
  expect(menssagem).to have_text confirm
end