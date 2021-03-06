% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyISO52010.R
\name{tidyISO52010}
\alias{tidyISO52010}
\title{Tidy version of the ISO 52010-1:2017 solar irradiance calculation}
\usage{
tidyISO52010(
  .df,
  lat,
  lng,
  tz,
  t_shift = NULL,
  surfaceAzimuths = c(180, 90, 0, -90),
  surfaceTilts = rep(90, length(surfaceAzimuths)),
  albedo = NULL,
  interp_perez = 0,
  col_timestamp = "timestamp",
  col_G_dir = "G_dir",
  col_G_dif = "G_dif",
  col_albedo = "albedo"
)
}
\arguments{
\item{.df}{Data frame that holds the solar irradiance data}

\item{lat}{Latitude, in decimal degrees}

\item{lng}{Longitude, in decimal degrees}

\item{tz}{Time zone of the irradiance data, in hours. E.g. +1 for central European
(UTC+1) time zones. Use 0, if data is recorded in UTC time.}

\item{t_shift}{Decimal hours to shift timestamps with. E.g. timestamp 12:00 usually refer to the
solar irradaince during time interval 11:00 - 12:00, then use t_shift = 0.5. 
If the timestamp 12:00 refer to interval 11:45 - 12:15, use t_shift = 0.0. 
If the timestamp 12:00 refer to interval 11:45 - 12:00, use t_shift = 0.125.
If t_shift is NULL, it is estimated as (n_hour[2] - n_hour[1])/2.}

\item{surfaceAzimuths}{Vector of surface azimuths, in degrees. Need to be same lenght as surfaceTilts}

\item{surfaceTilts}{Vector of surface tilts, in degrees. 90 for vertical, 0 for horizontal.}

\item{albedo}{Constant solar reflectivity of the ground, 0.2 can be used if actual conditions are unknown. 
If NULL, the variable albedo from .df is used instead.}

\item{interp_perez}{Set to 1 to interpolate from the Parez table (clearness index    and    brightness coefficients). 
Set to 0 to use binned values, this follow the procedure of the ISO 52010-1:2017 standard. Defaults to 0.}

\item{col_timestamp}{The name of the column in .df holding timestamp data}

\item{col_G_dir}{The name of the column in .df holding direct normal (beam) irradance data}

\item{col_G_dif}{The name of the column in .df holding diffuse horizontal irradance data}

\item{col_albedo}{The name of the column in .df holding albedo data.}
}
\value{
The inputed .df with additional columns of calculated solar irradiance
}
\description{
Tidy version of the ISO 52010-1:2017 solar irradiance calculation
}
