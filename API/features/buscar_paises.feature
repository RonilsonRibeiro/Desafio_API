#language: pt
#utf-8


Funcionalidade: Buscar países
Eu como sistema intermediário
Quero fazer uma requisição de leitura na API
Para encontrar informações sobre países


@1
Cenário: Buscar países
  Quando eu fizer uma busca pelos países
  E imprimir a quantidade de países cadastrados
  Então o país "BRA" estará na lista

@2
Cenário: Buscar texto
  Quando eu fizer uma busca pelos dados do país "USA" e texto "new"
  Então exibirei os resustados encontrados
