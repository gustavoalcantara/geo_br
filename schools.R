##Geobr - Read_Schools
geobr::read_schools() -> x

#Diretório de Acordo com os dados da BD
#Todas as demais infos estão 
#basedosdados.org/dataset/br-inep-censo-escolar


x|> #Seleção das variáveis
  dplyr::select(code_school, 
                date_update, 
                geom
  ) |> # Rename das Variáveis
  dplyr::rename(id_escola = code_school,
                ano = date_update,
                geometria = geom
    
  )


