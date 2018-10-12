# Reporducible Research in R 

**References:**

[Reproducible Research with R and R Studio, Christopher Gandrud](https://www.amazon.co.uk/Reproducible-Research-Studio-Chapman-Hall/dp/1466572841)


**Lecture:**

* General concepts

  * Reproducible research book Chapter 2

* knitr and rmarkdown

  * Reproducible research book Section 3.3

  * Particularly interesting the different approaches in 3.3.8

    * Give example of "Compiling R source code Notebooks"

* Gathering data from the internet using R

  * Can use bits from internet lecture

* Create tables with variables descriptions (9.3.6)

* Creating batch reports with brew (12.5) *not include*

* Git (last part of the tutorial/lecture)

  * 5.3.5 Summing up the GitHub workflow

  * 5.4 RStudio & GitHub
  


Prepare lecture slides as 13.3.1 HTML Slideshows with rmarkdown, then on 13.4.3 GitHub Pages

* Create new branch
  * *git checkout --orphan gh-pages*
  * From RStudio, Git tab, click on New Branch, name the branch *gh-pages*
* To update from master use:
  *git checkout gh-pages*
  *git merge master*
  *git commit -am "Update GitHub pages"*
  *git push*
  *git checkout master*

**Practical:**

* Clone this repo

* Reproduce the analysis

  * Download data from internet

  * Merge

  * Simple analysis

* Close exercise repo with just instructions to do a second analysis
