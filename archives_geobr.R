#listagem dos datasets do Geobr
geobr::list_geobr()

#Atribuição do dataset de Municipalidade
x <- geobr::read_municipality()

#Rename das variáveis de acordo com a BD
x|>
  dplyr::rename(
    id_municipio = code_muni,
    nome_municipio = name_muni,
    codigo_estado = code_state,
    sigla_uf = abbrev_state,
    geometria = geom
                )

str(x)
