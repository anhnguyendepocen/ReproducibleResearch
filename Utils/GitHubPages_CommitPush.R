##########
# R code to upload edits to the GitHub pages.
# The code uses the function system to checkout the gh-pages git branch,
# merges the master branch into it, push it to GitHub, and switches back to the master
##########


system("git checkout gh-pages")
system("git merge master")

# NOTE: Use only if login credential have just been used
#    or use "git config credential.helper store" to store credentials
system("git push")

system("git checkout master")
