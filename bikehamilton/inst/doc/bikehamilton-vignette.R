## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(bikehamilton)
library(tidyverse)

## ----load-data-----------------------------------------------------------
data("bicycle_trips")

## ----summary-data--------------------------------------------------------
summary(bicycle_trips)

## ----call-help-----------------------------------------------------------
?bicycle_trips

## ------------------------------------------------------------------------
trips = bicycle_trips$Trips    # the number of trips per origin-destination pair 
mean(trips)                    # apply the mean function 

## ------------------------------------------------------------------------
ggplot(data = bicycle_trips) + 
  geom_bar(mapping = aes(x = Trips))

