listar_fotos <- function(padrao) {
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
    
    data <- tidyr::replace_na(data, "")
    id <- stringr::str_remove(arq, "\\..*$")
    print(glue::glue(
      '
      - id: "{id}"
        date: "{data}"
        fotos: ["{arq}"]
        descricao: "" \n
      '
    ))
  }
}

