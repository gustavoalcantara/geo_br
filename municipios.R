geobr::read_municipality() -> x #Lendo df a partir do pacote

x|>
  dplyr::select(code_muni, #Variaveis de Interesse
                abbrev_state,
                geom) |>
  dplyr::rename(id_municipio = code_muni, #Padrão BD
                sigla_uf = abbrev_state,
                geometria = geom) -> x

write.csv(x, 'municipios.csv',  na = " ", 
          row.names = F, fileEncoding = "UTF-8") #salvando arquivo csv
