# Google Summer of Code 2023

## Organisation: The R Project for Statistical Computing

### Project: imputeTestbench for multivariate time series
<https://github.com/rstats-gsoc/gsoc2023/wiki/imputeTestbench-for-multivariate-time-series>

#### Tests
- Easy: Download the `imputeTestbench` package and demonstrate it with a naturally occurring time series. Document it with RMarkdown.

- Medium: Suggest possible updates or a new feature you would like to include in the next version of the `imputeTestbench` package.

- Hard: Develop a dummy code of 5 functions and a vignette and pass it with no Error/Warning/Note through <https://win-builder.r-project.org/>
- 
#### Easy Test
Install the `imputeTestbench` package using `install.packages("imputeTestbench")` and load it.

``` r
library(imputeTestbench)
```
The dataset used is `nhtemp` which is a default datset in R.It contains **Average Yearly Temperatures** in New Haven from 1912-1971.

```r
aa <- impute_errors(dataIn = nhtemp)
aa
```
![alt text](https://github.com/avinabneogy23/GSOC-23/blob/main/Easy%20test/index_1.png)
```r
# change the simulation for missing completely at random observations
aa <- impute_errors(dataIn = nhtemp, smps = 'mcar')
aa
```
![alt text](https://github.com/avinabneogy23/GSOC-23/blob/main/Easy%20test/index_2.png)

The rest of the code for the easy test can be found the the directory <https://github.com/avinabneogy23/GSOC-23/tree/main/Easy%20test>

#### Medium Test
`imputeTestbench` is a great package for comparing various methods of imputation . This project modifies the package to work with multivariate time series data since the package currently has suppo. Few updates that I would suggest are:
-   Introducing new sampling methods such as monte carlo.
-   Making the package interactive.
-   Developing a ShinyApp for the package.

#### Hard Test
For the final test, I created a R package called `billboardsongs`. It contains five functions, `find_artist()`, `random_song()`, `song_lyrics()`, `song_properties()` and `spotify_playlist_url()` , with documentation and tests. Then, using `devtools::check()`, I checked for any errors or warning, and uploaded the source file to <https://win-builder.r-project.org/>. It passed without errors/warnings/note.

The result of <https://win-builder.r-project.org/> is included in the file(`00check.log`) inside the repository <https://github.com/avinabneogy23/GSOC-23/tree/main/Hard%20test>.


