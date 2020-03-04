# Console
# Using R as a calculator
1 + 1
1 / 200 * 30
(59 + 73 + 2) / 3
# 42 * ??? # fill in a number here

# Loading and Viewing a dataframe
airquality
?airquality
View(airquality)

# Accessing a variable in a data frame
airquality$Ozone
# Environment
# You can create new objects with `<-`:
x <- 3 * 4

# Check your environment pane is there an object called `x`?
# You can inspect an object by typing its name (in the console pane):
x

# Let's make another object:
r_rocks <- 2 ^ 3

# Now inspect it:
r_rock

# Oops, try again:
R_rocks

# R is very picky!
# There’s an implied contract between you and R: it will do the tedious computation for you, but in return, you must be completely precise in your instructions. Typos matter. Case matters.

# R Functions
# Functions are (most often) verbs, followed by what they will be applied to in parentheses:
do_this(to_this)
do_that(to_this, to_that, with_those)

mean(airquality$Temp)
View(airquality)
# R packages
# Packages are installed with the `install.packages` function and loaded with the `library` function, once per session:
# CRAN
# Centralised
# R
# Archive
# Network

install.packages("package_name")
library(package_name)

# Your turn! -------------------------------------------------------------------

# Access the column named "Solar.R"
airquality$ ???
  
# Install the package, "naniar"?
install.packages("naniar")

# Now, run library("naniar") 
library(???)
