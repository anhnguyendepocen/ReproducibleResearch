# Reproducible Research in R

This repository provides the materials for a reproducible lecture on reproducibility using R and RStudio. Those include the [lecture slides](https://sdesabbata.github.io/ReproducibleResearch/Materials/Lecture/ReproducibleResearchWithR.html) prepared using [IOSlides](https://rmarkdown.rstudio.com/ioslides_presentation_format), as well as the instructions and an example of a [simple reproducible analysis](https://sdesabbata.github.io/ReproducibleResearch/Analysis/Reproducible_analysis_in_R.html) for a practical session prepared in RMarkdown.

Reference book: [Christopher Gandrud, *Reproducible Research with R and R Studio*](https://www.crcpress.com/Reproducible-Research-with-R-and-R-Studio/Gandrud/p/book/9781498715379) also available [on GitHub](https://github.com/christophergandrud/Rep-Res-Book)



## Libraries

The project is based on the "Tidyverse" libraries. Please install Tidyverse before cloning the repository.

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