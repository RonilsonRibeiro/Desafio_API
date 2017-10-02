class Paises
  include HTTParty

  base_uri "http://services.groupkt.com"
  format :json

  attr_reader :request_body

  def get_pais(index=nil)
    self.class.get("/country/get/all/#{index}")
  end

  def get_estado(index=nil,texto=nil)
    self.class.get("http://services.groupkt.com/state/search/#{index}?text=#{texto}")
  end

  def validar_pais(hash,pais)
    #Varre os resultados
    hash.each do |item|
      if item["alpha3_code"].eql? pais
        @i = 1
      end
    end

    #Valida se o país foi encontrado
    if @i.eql? 1
      puts "O País #{pais} está na lista de países."
    else
      puts "O País #{pais} não está na lista de países."
      fail
    end
  end


end
