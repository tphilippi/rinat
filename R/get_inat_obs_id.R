#' Get information on a specific observation
#'
#' @export
#' @import httr plyr jsonlite
#' @param id a single id for an inaturalist observation record
#' @return a list with full details on a given record
#' @examples \dontrun{
#' m_obs <- get_inat_obs(query="Monarch Butterfly")
#' get_inat_obs_id(m_obs$id[1])
#' }
get_inat_obs_id <- function(id){
  base_url <- "http://www.inaturalist.org/"
  q_path <- paste("observations/",as.character(id),".json", sep = "")
  fromJSON(content(GET(base_url,path = q_path), as = "text"))
}

