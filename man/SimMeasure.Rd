\name{SimMeasure}
\alias{SimMeasure}
\title{Generation of Similarity Matrix}
\usage{
SimMeasure(data,  threshold=NULL, ...)
}
\arguments{
  \item{data}{Matrix object containing observation data on which to calculate
    the similarity score.}
  \item{threshold}{The threshold value. Responses less than this value (absolute
    value condered)are not used in calculating the similarity score. }
  \item{...}{Other parameters.}
}
\description{
    Returns a adjacency matrix with the similarity scores between individuals. If
    \code{threshold} is provided, values where the absolute value of the
    observation is less than the threshold are not considered. Details of the
    algorithm can be found in the accompanying paper (see references). 
}
\details{
    Data can contain NA but may not contain NULL values. This method is designed
    for datasets with high numbers of missing or uninformative values that can
    be removed by setting the \code{threshold} value. Note that the
    \code{threshold} value must be the same for all numbers. It may be advisable
    to standardize the data if there are large variations.
    }
\value{
    \code{SimMeasure} returns an adjacency matrix containing edges corresponding
    to the similarity of the observed values.
}
\author{Shannon M. Bell}
\references{
  Bell SM, Last RL. SimGraph: Phenotypic Data to Graph Analysis.
  Bioinformatics, in review
  }
\examples{
 #using the state.x77
 sim<-SimMeasure(t(state.x77), threshold=NULL)
 sim[1:5,1:15]


}