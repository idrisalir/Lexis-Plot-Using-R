library(LexisPlotR)

data("lifelines_sample")
lifelines_sample <- lifelines_sample[1:60,]
head(lifelines_sample)


entry<-c(as.Date('2014-01-25'), as.Date('2012-09-05'), as.Date('2012-11-22'), as.Date('2017-08-08'), as.Date('2014-07-23'), as.Date('2020-04-01'), as.Date('2016-03-25'), as.Date('2015-09-08'), as.Date('2016-05-09'), as.Date('2018-03-06'), as.Date('2019-06-18'), as.Date('2019-06-28'), as.Date('2013-03-21'), as.Date('2020-01-22'), as.Date('2016-02-19'))
exit<-c(as.Date('2017-10-10'), as.Date('2015-02-27'), as.Date('2014-12-18'), as.Date('2021-12-08'), as.Date('2019-05-31'), as.Date('2020-10-17'), as.Date('2021-12-04'), as.Date('2018-10-25'), as.Date('2016-10-04'), as.Date('2020-09-30'), as.Date('2021-11-23'), as.Date('2021-10-27'), as.Date('2021-09-17'), as.Date('2021-10-13'), as.Date('2019-05-16'))


lexdata<-data.frame(entry,exit)

lg <- lexis_grid(year_start = 2012, year_end = 2023, age_start = 0, age_end = 10)

lg <- lexis_age(lg =lg, age = 3)
lg <- lexis_year(lg =lg, year = 2017)
lg <- lexis_cohort(lg =lg, cohort = 2015, fill = "red", alpha = 0.5)
lexis_lifeline(lg = lg, birth = lexdata$entry, exit = lexdata$exit, lwd = 1.5, lineends = TRUE)



mylexis <- mylexis + theme (axis.title = age( face ="bold", colour = "blue"))



data("lifelines_sample")
lifelines_sample <- lifelines_sample[1:60,]
head(lifelines_sample)


entry<-c(as.Date('2014-01-25'), as.Date('2012-09-05'), as.Date('2012-11-22'), as.Date('2017-08-08'), as.Date('2014-07-23'), as.Date('2020-04-01'), as.Date('2016-03-25'), as.Date('2015-09-08'), as.Date('2016-05-09'), as.Date('2018-03-06'), as.Date('2019-06-18'), as.Date('2019-06-28'), as.Date('2013-03-21'), as.Date('2020-01-22'), as.Date('2016-02-19'))
exit<-c(as.Date('2017-10-10'), as.Date('2015-02-27'), as.Date('2014-12-18'), as.Date('2021-12-08'), as.Date('2019-05-31'), as.Date('2020-10-17'), as.Date('2021-12-04'), as.Date('2018-10-25'), as.Date('2016-10-04'), as.Date('2020-09-30'), as.Date('2021-11-23'), as.Date('2021-10-27'), as.Date('2021-09-17'), as.Date('2021-10-13'), as.Date('2019-05-16'))


lexdata<-data.frame(entry,exit)

lg <- lexis_grid(year_start = 2012, year_end = 2023, age_start = 0, age_end = 10)
