sumarizar_paises <- function(continentes = "Europa", ano_minino = 2000){

  ##Alternativa globals


  # dados::dados_gapminder |>
  #   dplyr::filter(.data[[continente]] %in% "Europa", ano >= 2000) |>
  #   dplyr::group_by(.data[[ano]]) |>
  #   dplyr::summarise(
  #     pop = sum(.data[[populacao]]) / 1e6,
  #     vida = mean(.data[[expectativa_de_vida]]),
  #     .groups = "drop"
  #   )
  #



   dados::dados_gapminder |>
    dplyr::filter(continente %in% continentes,
                  ano >= ano_minino) |>
    dplyr::group_by(ano) |>
    dplyr::summarise(
      pop = sum(populacao) / 1e6,
      vida = mean(expectativa_de_vida),
      .groups = "drop"
    )
}
