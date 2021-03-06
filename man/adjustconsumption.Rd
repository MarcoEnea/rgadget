% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function.R
\name{adjustconsumption}
\alias{adjustconsumption}
\title{Adjust for overconsumption}
\usage{
adjustconsumption(catches, predation, stocks, i, maxratioconsumed)
}
\arguments{
\item{C}{is the commercial catch of prey}

\item{S}{is the survey catch of prey}

\item{E}{is the consumption of prey by predator}

\item{N}{is the total number of prey}

\item{opt}{gadget options list}
}
\value{
a list with adjusted catches/consumption for C, S and E.
}
\description{
For each prey an upper limit needs to be set on the total amount
consumed by all predators so as not to obtain more consumption than
available biomass.  Consumption is limited to 95\% (\eqn{R_M}) of the
available biomass. This is implemented by scaling target consumption by all
predators. Let \eqn{R_{prey}(l)}{R_prey(l)} be the Ratio consumed and
\eqn{R_M} be the maximum ratio consumed then
\deqn{R_{prey}(l)=\frac{\sum_{pred}\sum_{L}C_{pred,prey}(L,l)}{N_{prey}(l)W_{prey}(l)}}
If \eqn{R_{prey}(l)>R_M}{R_prey(l)>R_M} consumption is adjusted as follows
\deqn{C_{pred,prey}(L,l)=R_MN_{prey}(l)W_{prey}(l)\frac{C_{pred,prey}(L,l)}{\sum_{pred}C_{pred,prey}(L,l)}}
}

