% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validateCoord.R
\encoding{UTF-8}
\name{validateCoord}
\alias{validateCoord}
\title{Spatial Validation of Species Records}
\usage{
validateCoord(
  x,
  lon = "decimalLongitude.new",
  lat = "decimalLatitude.new",
  low.map = "plantR",
  high.map = "plantR",
  country.shape = "NAME_0",
  country.gazetteer = "country.gazet",
  tax.name = "scientificName.new",
  output = "same.col"
)
}
\arguments{
\item{x}{a data frame with the species records and their coordinates in decimal
degrees.}

\item{lon}{Name of the column with the longitude to be validated. Default to
'decimalLongitude.new'}

\item{lat}{Name of the column with the latitude to be validated. Default to
'decimalLatitude.new'}

\item{low.map}{a sf multipolygon object containing the global administrative
map at the lowest level (e.g. country). The default is "plantR", the
default map obtained from [GADM]{https://gadm.org} (see \code{worldMap}).}

\item{high.map}{a sf multipolygon object or a list of sf objects containing
the regional map at the highest administrative level (e.g. municipality).
The default is "plantR", the map for all Latin American countries and
dependent territories  obtained [GADM]{https://gadm.org} (see \code{latamMap}).}

\item{country.shape}{Name of the column with the country name obtained from
the world map based on the original record coordinates. Default to 'NAME_0'}

\item{country.gazetteer}{Name of the column with the country name obtained
from the gazetteer, based on the description of the record locality.
Default to 'loc.correct'}

\item{tax.name}{character. Name of the columns containing the species name.
Default to "scientificName.new"}

\item{output}{a character string with the type of output desired: 'new.col'
(columns with the new results for each type of validation added to the
input data) or 'same.col' (results are stored only in overwritten into
column \code{geo.check}). Default to 'same.col'.}
}
\value{
The input data frame, plus the new columns with the results of the
geographical coordinates (e.g. 'geo.check').
}
\description{
This function performs the crossing of the geographical
coordinates with the world and Latin-american maps, and it checks for
coordinates falling near the sea shore, open sea and country boundaries. It
also test if problematic coordinates are not inverted or swapped. Finally,
the function searches for records taken from cultivated individuals and
for the presence of spatial outliers for each species.
}
\details{
The function works similarly to a wrapper function, where the
individuals steps of the proposed \strong{plantR} workflow for the validation
of the spatial information associated to each record (e.g. geographical
coordinates) are performed altogether (see the \strong{plantR} tutorial for
details).
}
\seealso{
\link[plantR]{checkCoord}, \link[plantR]{checkBorders}, \link[plantR]{checkShore},
\link[plantR]{checkInverted}, \link[plantR]{checkOut}, \link[plantR]{getCult}
}
\author{
Andrea Sánchez-Tapia, Sara R. Mortara & Renato A. F. de Lima
}
