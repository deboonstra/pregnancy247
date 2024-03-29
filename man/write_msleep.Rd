% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_msleep.R
\name{write_msleep}
\alias{write_msleep}
\alias{write_all_msleep}
\title{Export screened sleep or nap Actiwatch data}
\usage{
write_msleep(x, subject, trimester, nap = FALSE, file = NULL, ...)

write_all_msleep(x, subject, trimester, nap = FALSE, file = NULL, ...)
}
\arguments{
\item{x}{A data frame or tibble to write to disk.}

\item{subject}{A character vector denoting the Pregnancy 24/7 subject.}

\item{trimester}{A character or integer vector denoting trimester of
pregnancy.}

\item{nap}{Logical denoting if nap data is to be imported.
Default is \code{FALSE}.}

\item{file}{File or connection to write to.}

\item{...}{Any other parameters needed for \code{\link[readr:write_delim]{readr::write_csv()}}.}
}
\description{
Export screened subject-specific sleep or nap Actiwatch data to
\code{subject}-specific directories.
}
\details{
When \code{file} is the default value of \code{NULL} the \code{subject} and
\code{trimester} parameters along with the current working directory are used to
write the files that ends with
\itemize{
\item \verb{_napsonly_flag.csv} if \code{nap = TRUE} and
\item \verb{_restonly_flag.csv} by default.
}

These functions performs more tasks than simply writing a data set. The
\code{write_all_msleep} function looks for data sets that already exists within
the project directory that contains a collection of wear period data based on
the type of rest (sleep or nap) given by the \code{nap} parameter. For Pregnancy
24/7, the data sets file names are
\itemize{
\item \code{master_dataset_napsonly.csv} if \code{nap = TRUE} and
\item \code{master_dataset_restonly.csv} by default.
}

If these files already exists, then the wear period data for the
\code{subject} of interest during the \code{trimester} of interest is merged with the
the existing data set based on the type of rest for the \code{subject}.
}
\examples{
# See quality_check() for an example of how these functions are used.

}
\seealso{
\code{\link[readr:write_delim]{readr::write_csv()}}
}
