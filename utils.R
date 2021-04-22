listar_fotos <- function(padrao, padrao_desc = NULL) {
  arquivos <- list.files(
    "static/images/fotos/",
    pattern = padrao
  )
  for (arq in arquivos) {
    data <- stringr::str_extract(arq, "[0-9]{4}-[0-9]{2}-[0-9]{2}")
    if (!is.na(data)) {
      data <- format(lubridate::ymd(data), "%d de %B")
    } else {
      data <- ""
    }
    if (!is.null(padrao_desc)) {
      desc <- stringr::str_remove_all(arq, padrao_desc)
      desc <- stringr::str_to_title(desc)
    } else {
      desc <- ""
    }
    
    data <- tidyr::replace_na(data, "")
    id <- stringr::str_remove(arq, "\\..*$")
    print(glue::glue(
      '
      - id: "{id}"
        date: "{data}"
        fotos: ["{arq}"]
        descricao: "{desc}" \n
      '
    ))
  }
}

