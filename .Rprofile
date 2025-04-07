options(blogdown.hugo.version = "0.145.0")
options(blogdown.verbose = TRUE)
options(
  blogdown.ext = ".Rmarkdown",
  blogdown.author = "Ian Roberts",
  blogdown.subdir = "blog",
  blogdown.method = "markdown"
)


blogit <- function(title = "Untitled",
                   tags = c("R", "blogdown"),
                   categories = c("Programming", "R")) {
  blogdown::new_post(
    title = title,
    kind = "Rmd",
    open = FALSE,
    tags = tags,
    categories = categories
  )
}

if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  if (requireNamespace("vscode-R", quietly = TRUE)) {
    vscode - R:::.vsc.attach()
    options(vsc.rmarkdown.filetypes = c(".Rmd"))
  }
}

# Default knitr chunk options
options(knitr.default.chunk = list(
  echo = TRUE,
  warning = FALSE,
  message = FALSE
))


