% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Cluster.R
\name{makeCluster}
\alias{makeCluster}
\title{Create a cluster of nodes for parallel computation}
\usage{
makeCluster(numberOfThreads, singleThreadToMain = TRUE)
}
\arguments{
\item{numberOfThreads}{Number of parallel threads.}

\item{singleThreadToMain}{If \code{numberOfThreads} is 1, should we fall back to running the
process in the main thread?}
}
\value{
An object representing the cluster.
}
\description{
Create a cluster of nodes for parallel computation
}
