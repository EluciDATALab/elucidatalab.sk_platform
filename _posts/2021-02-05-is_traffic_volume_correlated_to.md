---
title: Is traffic volume correlated to Covid-19 infections?
date: 2021-02-05
image: src/assets/cover photo - blog 5_1.jpg
summary: This blog is inspired by a quote of virologist Steven Van Gucht in Het Journaal on December 9; “... what is striking is that we move more often... and we know that that is a pretty good prediction of the future number of new infections." Since vehicle counts data is closely connected to people’s movements, it is worthwhile to investigate whether Steven Van Gucht’s statement is valid, i.e., how well traffic intensity correlates with Covid-19 infections.
author: Michiel Dhont, Elena Tsiporkova and Tom Tourwé
layout: post
---
This is the fifth blog in a series of blogs concerning the traffic situation in Brussels in times of Covid-19 restrictions. This work has been realized in the context of the MISTic project, executed by the EluciDATA Lab of Sirris with Macq and VUB as partners.

Our previous analyses were based on a dataset of Brussels Mobility, which contains vehicle counts from 55 busy locations in the city of Brussels. During the first lockdown in March 2020, we discovered, as communicated in our first blog, that traffic had dramatically reduced overall, but less so on the small ring of Brussels, where peaks of up to 80% of retained traffic were observed. In the previous blog (number 4), we investigated the traffic volume evolution in relation to historical values since 2018, in order to consider the seasonality and holiday effects impacting traffic volumes. We observed that the traffic volumes in October 2020 were very close to normal (pre-Covid-19) conditions.

Today’s blog is inspired by a quote of virologist Steven Van Gucht in Het Journaal on December 9:

"...wat wel opvalt is dat we ons vaker verplaatsen… en daarvan weten we dat dat een vrij goede voorspelling is van het toekomstig aantal nieuwe besmettingen." [... what is striking is that we move more often... and we know that that is a pretty good prediction of the future number of new infections.]

Steven Van Gucht

Since vehicle counts data is closely connected to people’s movements, it is worthwhile to investigate whether Steven Van Gucht’s statement is valid, i.e., how well traffic intensity correlates with, or even more predicts peaks in Covid-19 infections.

The blog reveals three main insights: 
1. a certain threshold in traffic load needs to be exceeded in order to observe an effect on the number of Covid-19 related hospitalisations; 
2. there is a clear difference in effect on traffic between residential areas and more business strategic locations; 
3. peaks in Covid-19 hospitalisations follow peaks in traffic volumes with a very variable time offset depending on the time of the year.
Less than 16 000 vehicles a day in Brussels controls the pandemic

As a first use case, we consider the average daily vehicle counts for 50 busy roads in the Brussels Capital Region since the beginning of the Covid-19 pandemic in March 2020. In the figure below, the evolution of these vehicle counts is shown with a blue line. To smooth down the periodic drops due to weekend effects, a rolling window of the average per week is applied. The latter is also aligned with the way the Brussels Covid-19 hospitalisations are reported (orange line). Note that we use the number of new hospitalisations in this study, instead of the number of new infections. The hospitalisation rate also represents the presence of Covid-19, although it is typically lagging a bit behind the number of infections. The big advantage of this parameter is its stability since it is not affected by the varying testing strategy and capacity.
<img alt="chart" src="src/assets/chart.png" />
How much time is needed to see the effect of a traffic reduction?

For both Brussels and Flanders, a delayed effect of the vehicle counts on the Covid-19 hospitalisations is observed. Although the window of delay between traffic and hospitalisation peaks seems very variable in the different periods, there is no doubt that there is some correlation between the vehicle counts evolution and the Covid-19 numbers.

In order to support formally this statement, we calculated the Pearson correlation between the Covid-19 hospitalisations and the average vehicle counts for 3 so called “periods of interest”. Each period of interest represents a different stage (in terms of peaks) in the Covid-19 hospitalisations and is annotated in the two images above. Since we are interested in discovering which time offset leads to the highest correlation for each period of interest, the Pearson correlation was calculated for a time offset between 7 and 60 days for each period.

 The most optimal Pearson correlation during the first period of interest (the blue bar below the two plots) was obtained for both regions for a delay of 40-42 days. This indicates that the reduction in traffic (i.e., in people’s movement) needed 40-42 days before it took effect on the Covid-19 hospitalisations.
For period of interest 2 (small peak during summer break), the offset with the highest Pearson correlation was too high to be reliable. We suppose that too many different factors impacted the hospitalisation rate in the summer period, which obviously cannot be captured solely by traffic counts.
In period of interest 3 (the second major peak), the optimal Pearson correlation is obtained at a different offset in time for Brussels (36 days) and Flanders (22 days). Such a big difference in delay of effect can be attributed to the different nature of traffic data e.g., more business related in Brussels vs. residential in Flanders, more concentrated location counts in Brussels vs. fragmented ones in Flanders, etc. which are differently affected by Covid-19 measures.

<img alt="chart" src="src/assets/chart2.png" />
So, is Steven Van Gucht's claim correct?

Based on this brief study, it is clear that an increasing trend in traffic volumes can serve as an early indicator for increasing numbers of Covid-19 infections as claimed by Steven Van Gucht. However, the increase of Covid-19 infections is caused by a multitude of very diverse and dynamic factors which are not captured in traffic data, e.g., unpredictable human behaviour and evolution of the virus (e.g., evolving time between symptoms and hospitalisation). Since it is very hard to take such effects into account, monitoring evolution in traffic volumes is not reliable for prediction but still very useful to raise an alarm of caution.

Project subsidized by the Brussels-Capital Region - Innoviris.

<a href="https://innoviris.brussels/" target="_blank"><img alt="RGB_innoviris_we fund your future_MAIN LOGO.jpg" src="src/assets/RGB_innoviris_we fund your future_MAIN LOGO.jpg" /></a>

<a href="https://elucidata.be/blog" target="_self"><img alt="button_to_blog.jpg" src="src/assets/button_to_blog.jpg" /></a>