##Geobr - Read_Schools
geobr::read_schools() -> x

#Diretório de Acordo com os dados da BD
#Todas as demais infos estão 
#basedosdados.org/dataset/br-inep-censo-escolar


x|> #Seleção das variáveis
  dplyr::select(code_school, 
                date_update,
                abbrev_state,
                geom
  ) |> # Rename das Variáveis
  dplyr::rename(id_escola = code_school,
                ano = date_update,
                id_sigla_uf = abbrev_state,
                geometria = geom
  ) |>
  dplyr::select(ano, #padrão BD
                id_sigla_uf,
                id_escola,
                geometria
  ) -> x

#Salvando arquivo csv
write.csv(x, 'escolas.csv',  na = " ", 
          row.names = F, fileEncoding = "UTF-8")
