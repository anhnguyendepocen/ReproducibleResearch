commit_comment <- "Update GitHub pages"

system("git checkout gh-pages")
system("git merge master")
system(paste("git commit -am \"", commit_comment, "\""))
system("git push")
system("git checkout master")