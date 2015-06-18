# Documentation

**Who made this app?** 

Author is [Risto Kaartinen](https://fi.linkedin.com/in/ristokaartinen).

**Why was this app made?**

This is a course project in a [Coursera's Developing Data Products course](https://www.coursera.org/course/devdataprod).

**How was this app made?**

Source code is at [github repository](https://github.com/sneik-/DevelopingDataProducts
). Data visualisation uses the dygraph package and the user interface is built on shiny and shinydashboard packages. Data was manipulated with dplyr package.

In addition to the Coursera's course material when learning Shiny I recommend Rstudio's [Vimeo material](https://vimeo.com/rstudioinc/videos) in general and the [Shiny dashboard video](https://vimeo.com/125265016) in particural.

**Slide presentation**

[Here](http://sneik-.github.io/hiekkalaatikko/testi.html#/) is a slide presentation about the app. It was part of the course work. 

Android users! I noticed that Android devices (tested with Samsung galaxy s3, s5 and some Android tablet) have a problem resolving DNS address of the slide presentation, even with different browsers. This a most likely a Android related bug: Android OS can't handle the presentation url with dash in it (4 other OS had no problems). While this bug is unsolved you can only open the presentation with a other OS than Android.
 
**Data**

Data holds three time series data sets giving the monthly deaths from bronchitis, emphysema and asthma in the UK, 1974–1979: population as a whole (ldeaths), males (mdeaths) and females (fdeaths).

**Interactive UI** 

You can access the app by clicking "Time Series Visualiser" at the sidebar menu.

Under the "Choose a data set:" you find a list of different datasets. You can explore population data set (ldeaths) or gender wise datasets. 

Under the "Explore data" you find a list of results of decomposed time series analysis: . Observed deaths time series is viewable as such, but one can also view the data 
from perspective of decomposed components: seasonal fluctuation, trend and irregular fluctuation. See more information about [decompose function](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/decompose.html)

Sliders below the graph allows you to set timespan. 
