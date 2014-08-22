% Generated by roxygen2 (4.0.1): do not edit by hand
\name{matboxplot}
\alias{matboxplot}
\title{Box plots of columns in a matrix}
\usage{
matboxplot(object, groupFactor, col = NULL, las = 3, ...)
}
\arguments{
\item{object}{object an object which is inherited from an
\code{eSet} such as an \code{ExpressionSet} or
\code{MethylSet} object. The \code{object} can also be a
data frame or matrix with observations
(e.g. probes or genes) on the rows and samples as the
columns.}

\item{groupFactor}{a factor variable representing which
group each column in \code{object} belongs to. It is important
that values in \code{groupFactor} be in the same
order as the columns in \code{object}.}

\item{col}{a numeric of colors to plot each group.}

\item{las}{a numeric in (0, 1, 2, 3) to orient the axis labels.
Default is 3 (always vertical).}

\item{...}{other arguments that can be passed to the
code{boxplot} function.}
}
\value{
A box plot for each column in \code{object}
}
\description{
Box plots of the columns of a matrix, but
the columns are ordered and colored by a group-level
variable
}
\examples{
library(minfi)
data(flowSorted)

p <- getBeta(flowSorted, offset = 100)
pd <- pData(flowSorted)
matboxplot(object = p, groupFactor = pd$CellType, col = c(2,3))
}
