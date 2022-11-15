## Utility function to browse historical changes in sraplus,
## in terms of package dependencies and files in the R directory

changes <- function(sha, list=FALSE, dir="~/git/DanOvando/sraplus")
{
  odir <- setwd(dir); on.exit(setwd(odir))

  ## Switch repository to SHA commit
  cmd <- paste("git reset --hard", sha)
  system(cmd, ignore.stdout=TRUE)

  ## Date
  dat <- system('git show -s --format=%cd --date=format:"%Y-%m-%d"',
                intern=TRUE)

  ## Version
  ver <- read.dcf("DESCRIPTION", fields="Version")
  ver <- unname(drop(ver))

  ## Imports
  imp <- read.dcf("DESCRIPTION", fields="Imports")
  imp <- unname(drop(imp))
  imp <- gsub("\\n", "", imp)
  imp <- gsub(" ", "", imp)
  imp <- gsub("\\(.*?\\)", "", imp)
  imp <- unlist(strsplit(imp, ","))
  imp <- sort(imp)

  ## R directory
  r <- dir("R")
  r <- tools::file_path_sans_ext(r)

  if(list)
  {
    out <- list(date=dat, version=ver, imports=imp, rfiles=r)
  }
  else
  {
    impstr <- paste0("(", length(imp), ") ", paste(imp, collapse=", "))
    rstr <- paste0("(", length(r), ") ", paste(r, collapse=", "))
    out <- c(date=dat, version=ver, import=impstr, rfiles=rstr)
  }

  out
}

################################################################################

## tab <- readLines("../sraplus_history.md")
## first <- grep("------- ", tab) + 1   # table header
## empty <- which(tab == "")
## last <- empty[empty > first][1] - 1  # first empty line after table header
## tab <- tab[first:last]
## tab <- substring(tab, 1, 7)

## x <- sapply(tab, changes)
