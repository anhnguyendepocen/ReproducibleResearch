# Reproducible Research in R

This repository provides the materials for a reproducible lecture on reproducibility using R and RStudio. Those include the [lecture slides](https://sdesabbata.github.io/ReproducibleResearch/Materials/Lecture/ReproducibleResearchWithR.html) prepared using [IOSlides](https://rmarkdown.rstudio.com/ioslides_presentation_format), as well as the [instructions](https://sdesabbata.github.io/ReproducibleResearch/Materials/Practical/Practical_session_instructions.html) and an example of a [simple reproducible analysis](https://sdesabbata.github.io/ReproducibleResearch/Analysis/Reproducible_analysis_in_R.html) for a practical session prepared in [RMarkdown](https://rmarkdown.rstudio.com/).

These materials are part of my teaching for the [MSc in GIScience](https://le.ac.uk/courses/geographical-information-science-msc/2019) at the [University of Leicester](https://le.ac.uk/). Check out my personal website and the [Pete Fisher Unit for GIScience](https://www2.le.ac.uk/departments/geography/research/fisher-geographical-information-and-data-laboratory) of the [School of Geography, Geology and the Environment](https://www2.le.ac.uk/departments/geoggeolenv) for more information about our research. You can also find me on Twitter [@maps4thought](https://twitter.com/maps4thought) and check out [@LeicesterGeog](https://twitter.com/LeicesterGeog) for more information on our geography teaching.

Check out the [lecture slides](https://sdesabbata.github.io/ReproducibleResearch/Materials/Lecture/ReproducibleResearchWithR.html) first and then read the [instructions](https://sdesabbata.github.io/ReproducibleResearch/Materials/Practical/Practical_session_instructions.html) for the practical session. If you are simply interested in reproducing this project, see the instructions below.

Reference book: [Christopher Gandrud, *Reproducible Research with R and R Studio*](https://www.crcpress.com/Reproducible-Research-with-R-and-R-Studio/Gandrud/p/book/9781498715379) also available [on GitHub](https://github.com/christophergandrud/Rep-Res-Book)



## Tools

This project is based on the [R programming language](https://www.r-project.org/) and the [RStudio](https://www.rstudio.com/) integrated development environment (IDE). The first is necessary, the second is strongly recommended. Both are free, open source, and available for Microsoft Windows, Linux, and Mac OS. 

In order to compile the RMarkdown scripts to *.pdf* documents, RMarkdown requires a LaTeX compiler. If you are working on the [University of Leicester](https://le.ac.uk/) Windows 10 computers, please close RStudio if open and install [MiKTeX](https://miktex.org/) from the *Software Centre* (this might take a few minutes). Once the installation is completed, re-open RStudio. MiKTeX should work fine for any other Windows system. On Linux, please install a TeX distribution, e.g. `sudo apt-get install texlive-full` on Ubuntu. On Mac OS, please install a TeX distribution such as [MacTeX](http://www.tug.org/mactex/).



## Libraries

The project is based on the [Tidyverse](https://www.tidyverse.org/) libraries. Please install Tidyverse before cloning the repository.

```{r}
install.packages("tidyverse")
```



## Data

The scripts in this project retrieve data from [Ofcom](https://www.ofcom.org.uk/research-and-data/data/opendata) and the [Department for Transport](https://www.gov.uk/government/organisations/department-for-transport) on 24 October 2018, and released under the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence) in the [United Kingdom](https://www.gov.uk/). A copy of those data files is provided in the *Backup* folder. Please see the [Open Government License v3](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/) on the [National Archives website](http://www.nationalarchives.gov.uk/) or the *LICENSE* file in this folder for.



## Build

To build all the scripts in the repository in the correct order, please execute the *Make.R* script that you can find in the main folder.

```{r}
source('Make.R')
```