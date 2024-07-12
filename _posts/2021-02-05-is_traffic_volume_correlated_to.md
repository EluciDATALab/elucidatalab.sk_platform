---
layout: post
title: Is traffic volume correlated to Covid-19 infections?
author: Michiel Dhont
email: michiel.dhont@sirris.be
date: 2021-02-05
image: src/assets/cover photo - blog 5_1.jpg
categories: [Intelligent_transportation_systems]
excerpt: This blog is inspired by a quote of virologist Steven Van Gucht in Het Journaal on December 9; “... what is striking is that we move more often... and we know that that is a pretty good prediction of the future number of new infections." Since vehicle counts data is closely connected to people’s movements, it is worthwhile to investigate whether Steven Van Gucht’s statement is valid, i.e., how well traffic intensity correlates with Covid-19 infections.
---

This is the fifth blog in a series of blogs concerning the traffic situation in Brussels in times of Covid-19 restrictions. This work has been realized in the context of the *MISTic* project, executed by the EluciDATA Lab with with <a href="https://www.macq.eu/nl_BE/" target="_blank" alt="Macq" class="text-blue-600 underline">Macq</a> and <a href="https://www.vub.be/" target="_blank" alt="VUB" class="text-blue-600 underline">VUB</a> as partners.

<br/>

Our previous analyses were based on a dataset of <a href="http://mobilite-mobiliteit.brussels/en" target="_blank" alt="Brussels Mobility" class="text-blue-600 underline">Brussels Mobility</a>, which contains vehicle counts from 55 busy locations in the city of Brussels. During the first lockdown in March 2020, we discovered, as communicated in our first blog ((<a href="insightful-blueprints-of-brussels-traffic" class="text-blue-600 underline">Insightful blueprints of Brussels traffic emerge in times of covid-19</a>)), that traffic had dramatically reduced overall, but less so on the small ring of Brussels, where peaks of up to 80% of retained traffic were observed. In the previous, 4th blog ((<a href="run-up-in-brussels-traffic-towards" class="text-blue-600 underline">Run-up in Brussels Traffic Towards the 2nd Covid-19 Peak</a>), we investigated the traffic volume evolution in relation to historical values since 2018, in order to consider the seasonality and holiday effects impacting traffic volumes. We observed that the traffic volumes in October 2020 were very close to normal (pre-Covid-19) conditions.

<br/>

Today’s blog is inspired by a quote of virologist Steven Van Gucht in Het Journaal on December 9:

*“…wat wel opvalt is dat we ons vaker verplaatsen… en daarvan weten we dat dat een vrij goede voorspelling is van het toekomstig aantal nieuwe besmettingen.”* *[... what is striking is that we move more often... and we know that that is a pretty good prediction of the future number of new infections.]*
*Steven Van Gucht*

Since vehicle counts data is closely connected to people’s movements, it is worthwhile to investigate whether Steven Van Gucht’s statement is valid, i.e., how well traffic intensity correlates with, or even more predicts peaks in Covid-19 infections.

<br/>

The blog reveals three main insights:
1. a certain threshold in traffic load needs to be exceeded in order to observe an effect on the number of Covid-19 related hospitalisations;
2. there is a clear difference in effect on traffic between residential areas and more business strategic locations;
3. peaks in Covid-19 hospitalisations follow peaks in traffic volumes with a very variable time offset depending on the time of the year.

<br/>
## Less than 16 000 vehicles a day in Brussels controls the pandemic

As a first use case, we consider the average daily vehicle counts for 50 busy roads in the Brussels Capital Region since the beginning of the Covid-19 pandemic in March 2020. In the figure below, the evolution of these vehicle counts is shown with a blue line. To smooth down the periodic drops due to weekend effects, a rolling window of the average per week is applied. The latter is also aligned with the way the Brussels Covid-19 hospitalisations are reported (orange line). Note that we use the number of new hospitalisations in this study, instead of the number of new infections. The hospitalisation rate also represents the presence of Covid-19, although it is typically lagging a bit behind the number of infections. The big advantage of this parameter is its stability since it is not affected by the varying testing strategy and capacity.

<br/>
<center><img alt="Graphical user interface, chart, line chartDescription automatically generated" src="src/assets/Covid hospitalisations vs vehicle counts.png" class="center" /></center>
<br/>

**Legend**:

1. *DIY & garden shops open*
2. *B2B companies open*
3. *B2C shops open*
4. *Contact professions open*
5. *Pubs & restaurants closed*
6. *Brussels: stricter curfew*
7. *Non-essential shops can open again*
<br/>
<br/>
It is interesting to observe that a certain threshold in vehicle counts (around 16 000-17 000) had to be exceeded in order to provoke the reversal of increasing/decreasing trends in Covid-19 hospitalisations. The figure above shows clearly that during the first lockdown in 2020 traffic load decreased to nearly a third of its normal volume. A similar sudden drop in Covid-19 hospitalisations can be observed some weeks later in the beginning of April (mind the log scale). Remarkably, the Covid-19 hospitalisation numbers kept dropping until the beginning of July despite the clear gradual increase in vehicle counts. Subsequently, only in the end of June the vehicle counts clearly exceeded the threshold of 16 000 vehicles, finally resulting in a strong increase of Covid-19 hospitalisations in July. Similarly, the temporary fall in Covid-19 hospitalisations in the beginning of September can be explained by the valley below 16 000 in vehicle counts in the middle of the summer holidays. During the second lockdown, traffic counts were as well only temporary diving below the threshold, followed by a stagnation around the threshold value. As a result, the Covid-19 hospitalisations dropped only for a short period and even stagnated in the second half of December. Note that this threshold might deviate over time as it is depending on external factors as availability of mouth masks and people following the restrictions less stringently.

<br/>
## Increase in hospitalizations in Flanders is also preceded by more traffic

As an extension to the Brussels vehicle counts, we also consider vehicle counts from the <a href="https://www.telraam.net/en" class="text-blue-600 underline">Telraam</a> dataset. Telraam is an open project where citizens can monitor traffic by attaching a small camera to the inside of a window, which counts vehicles passing by. Since any citizen can participate, a large(r) number of locations can be monitored. Apart from the different Belgian regions, the big difference with the Brussels vehicle counts data is that the Telraam data is typically originating from residential areas, with hotspots in Leuven, Antwerp and Ghent. The Brussels vehicle counts originate from busier and critical traffic locations (e.g., the small ring). A drawback of the Telraam project is that such low-cost hardware is not able to detect vehicles after sunset. So, to allow for a fair comparison over all seasons, we excluded all counts before 9:00 and after 17:00. Additionally, locations with too few data points inside the time interval of interest (March 2020 – December 2020) were filtered out. Finally, we identified 379 qualitative vehicle counting locations in Flanders.

<br/>

Based on this Telraam data, the same figure as in the Brussels case was constructed below. Focusing solely on the vehicle counts, one can observe a very similar traffic evolution up to the start of the second lockdown in November. However, in contrast to the Brussels numbers, a much steeper drop of vehicle counts was introduced in the beginning of November, leading to even less traffic than during the first lockdown. There can be different explanations for this phenomenon. Maybe Flanders is simply a better student than Brussels when it concerns following the Covid-19 restrictions and recommendations. Most probably, the difference could be attributed to the more residential character of the locations and the exclusion of the peak hours from the Telraam dataset. After all, this sudden drop does not seem to precede a very dramatic decrease in Covid-19 hospitalisations compared to the Brussels case. In general, one can observe again a very similar (lagging behind) behaviour of the vehicle counts and the Covid-19 hospitalisations.

<br/>
<center><img alt="Graphical user interface, chart, line chartDescription automatically generated" src="src/assets/Covid hospitalisations vs vehicle counts 9 - 17.png" class="center" /></center>
<br/>

<br/>
## How much time is needed to see the effect of a traffic reduction?

For both Brussels and Flanders, a delayed effect of the vehicle counts on the Covid-19 hospitalisations is observed. Although the window of delay between traffic and hospitalisation peaks seems very variable in the different periods, there is no doubt that there is some correlation between the vehicle counts evolution and the Covid-19 numbers.

<br/>

In order to support formally this statement, we calculated the Pearson correlation between the Covid-19 hospitalisations and the average vehicle counts for 3 so called “periods of interest”. Each period of interest represents a different stage (in terms of peaks) in the Covid-19 hospitalisations and is annotated in the two images above. Since we are interested in discovering which time offset leads to the highest correlation for each period of interest, the Pearson correlation was calculated for a time offset between 7 and 60 days for each period.

<br/>

- The most optimal Pearson correlation during the **first period of interest** (the blue bar below the two plots) was obtained for both regions for a delay of 40-42 days. This indicates that the reduction in traffic (i.e., in people’s movement) needed 40-42 days before it took effect on the Covid-19 hospitalisations.
- For **period of interest 2** (small peak during summer break), the offset with the highest Pearson correlation was too high to be reliable. We suppose that too many different factors impacted the hospitalisation rate in the summer period, which obviously cannot be captured solely by traffic counts.
- In **period of interest 3** (the second major peak), the optimal Pearson correlation is obtained at a different offset in time for Brussels (36 days) and Flanders (22 days). Such a big difference in delay of effect can be attributed to the different nature of traffic data e.g., more business related in Brussels vs. residential in Flanders, more concentrated location counts in Brussels vs. fragmented ones in Flanders, etc. which are differently affected by Covid

<br/>

*Project subsidized by the Brussels-Capital Region - Innoviris.*  
<br/>
<center><img alt="RGB_innoviris_we fund your future_MAIN LOGO.jpg" src="src/assets/RGB_innoviris_we fund your future_MAIN LOGO.jpg" class="center" href="https://innoviris.brussels/" target="_blank" /></center>
<br/>
