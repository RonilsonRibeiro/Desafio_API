Quando("eu fizer uma busca pelos países") do
  response = Paises.new.get_pais()
  @result = response.parsed_response["RestResponse"]["result"]
end

Quando("imprimir a quantidade de países cadastrados") do
  puts @result.count
end

Então("o país {string} estará na lista") do |pais|
  valida_lista = Paises.new.validar_pais(@result, pais)
end

Quando("eu fizer uma busca pelos dados do país {string} e texto {string}") do |pais, texto|
  @response = Paises.new.get_estado(pais, texto)
end

Então("exibirei os resustados encontrados") do
  puts @response.body
end
