options(blogdown.hugo.version = "0.145.0")
options(blogdown.ext = ".Rmarkdown",
  blogdown.author = 'Ian Roberts',
  blogdown.subdir = "blog")


blogit <- function(title = "Untitled",
                   tags = c("R", "blogdown"),
                   categories = c("Programming", "R")) {
    blogdown::new_post(
        title = title,
        kind = "markdown",
        open = FALSE,
        tags = tags,
        categories = categories,
    )
}

if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  if (requireNamespace("vscode-R", quietly = TRUE)) {
    vscode-R:::.vsc.attach()
  }
}

