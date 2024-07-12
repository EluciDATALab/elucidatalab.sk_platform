---
layout: post
title: Run-up in Brussels Traffic Towards the 2nd Covid-19 Peak
author: Michiel Dhont
email: michiel.dhont@sirris.be
date: 2020-11-24
image: src/assets/cover photo - blog 4.jpg
categories: [Intelligent_transportation_systems]
excerpt: In this fourth of a series of blogs concerning the traffic situation in Brussels in times of Covid-19 restrictions, we bring an update of the development of the traffic by comparing it with pre-Covid-19 outbreak times. For the first time we got access to more than two years of historical data before Covid-19 restrictions, which enables us to extract even more insights than we could before.
---

<br/>

This is the fourth blog in a series of blogs concerning the traffic situation in Brussels in times of Covid-19 restrictions. This work has been realized in the context of the MISTic project executed by the EluciDATA Lab  with <a href="https://www.macq.eu/nl_BE/" target="_blank" alt="Macq" class="text-blue-600 underline">Macq</a> and <a href="https://www.vub.be/" target="_blank" alt="VUB" class="text-blue-600 underline">VUB</a> as partners.

<br/>

Our analyses are based on <a href="http://mobilite-mobiliteit.brussels/en" target="_blank" alt="Brussels Mobility" class="text-blue-600 underline">Brussels Mobility</a>, which contains vehicle counts on 55 busy locations in the city of Brussels. During the first lockdown in March, we discovered in our first blog (<a href="insightful-blueprints-of-brussels-traffic" class="text-blue-600 underline">Insightful blueprints of Brussels traffic emerge in times of covid-19</a>) that traffic had dramatically reduced overall, but less so on the small ring of Brussels, where peaks of up to 80% of retained traffic were observed. In the second blog (<a href="unravelling-volume-patterns-of-brussels" class="text-blue-600 underline">Unravelling volume patterns of Brussels traffic in times of Covid-19</a>), we focused on the evolution of traffic during the first wave of relaxations of the restrictions which started in April, and revealed some interesting traffic volume patterns. Our third blog third blog(<a href="the-small-ring-of-brussels" class="text-blue-600 underline">The Small Ring of Brussels is Getting Gradually Cured (i.e. back to normal stagnated traffic) from Covid-19</a>) zoomed into the traffic situation on the small ring of Brussels since the beginning of the restrictions until the beginning of the summer, guided by some elucidating visual analytics.

<br/>

In this fourth blog, we bring an update of the development of the traffic in Brussels by comparing it with pre-Covid-19 outbreak times. To this end we use the historical vehicle count data available for 17 key locations in Brussels. We observe that the varying restrictions had, and still have, a lot of influence on the Brussels traffic.

<br/>

## HOLIDAYS

<br/>

As one can expect, traffic is heavily influenced by the holiday periods. Students do not have to go to school, parents often take holiday as well, some leisure activities take a break, while other dedicated to holidays leisure activities arise, etc. This phenomenon makes it hard to understand whether a sudden drop in vehicle counts at the start of a holiday is due to the “holiday effect” or due to the ever-changing Covid-19 restrictions. To get some more insights, we constructed some weekly fingerprints (as introduced in our first blog (<a href="insightful-blueprints-of-brussels-traffic" class="text-blue-600 underline">Insightful blueprints of Brussels traffic emerge in times of covid-19</a>)) in the figure below.

<br/>

In the first fingerprint, titled ‘Regular work-school weeks’, we illustrate the average traffic volume per hour of each weekday in the city of Brussels. For this we aggregated data from 2018 until the first Belgian lockdown in March 2020, and excluded school and public holidays. Since we use this fingerprint as the baseline for the subsequent analyses, we indicate in its center that it represents 100% of the traffic volume.

<br/>
<center><img alt="fingerprints - holidays" src="src/assets/fingerprints - holidays.png" class="center" /></center>
<br/>

### People Like Extended Weekends During Easter Holidays

<br/>

Next to the regular work-school week fingerprint on the first row, two similar fingerprints are constructed for the pre-Covid-19 Easter and summer holidays. In the Easter holiday one can, apart from the weekend, observe a decrease of traffic volume mainly on the beginning and the end of the work week. This might be caused by people taking an extended weekend, in particular around Easter Monday. This phenomenon is not observed during the summer holidays, where the decrease in traffic volume is nicely spread out.

<br/>

### Less Summer Traffic Without Imposed Restrictions

<br/>

The second row of the above figure shows the traffic fingerprints for the Easter and summer holidays during the Covid-19 pandemic. Due to the imposed lockdown, we can observe an additional 50% decrease of traffic volume during Easter, compared to the baseline Easter holidays. Some months later, in the summer holidays, all transport restrictions were abolished by the government. But surprisingly, a reduction of still 18% of the traffic volume was encountered. This might be due to several reasons e.g. more teleworking officially encouraged by the government (<a href="https://statbel.fgov.be/en/news/40-homeworkers-do-so-first-time-second-quarter-2020" target="_blank" class="text-blue-600 underline">statbel</a>), less travel related to leisure activities as children’s camps and visits to museums and other cultural events, no traffic linked to festivals, etc.

<br/>
<center><img alt="monthly bar chart.png" src="src/assets/monthly bar chart.png" class="center" /></center>
<br/>

## MONTHLY COMPARISON

<br/>

### Pre-Covid-19 Traffic Is Fluctuating

<br/>

The Brussels traffic volume is highly seasonal since it is influenced by weather conditions, holidays, yearly events, etc. The blue bars of the bar chart above illustrate this by visualizing the average weekly vehicle counts over the available locations for some consecutive months (aggregated since 2018 until the Covid-19 outbreak). We can observe the highest peak of traffic volume in May, and the lowest peak in July and August.

<br/>

### October Traffic Reached almost Normal Pre-Covid-19 Volumes

<br/>

The grey bars in this bar chart show the same values, but during the Covid-19 pandemic. This enables us to compare the weekly counts with what we would expect in a Covid-19-free situation. Between each corresponding month, the difference (Δ) in percentage is shown. We can observe that the overall seasonal pattern was somehow retained, while the reduction in traffic volume compared to what we would expect, kept decreasing (except for a dive of 7% in July). This ended in a **decrease of only 5% in traffic volume in October.** So, traffic was getting very close to the pre-Covid-19 situation. This also indirectly indicates that the regular economic activities in Brussels were also gradually getting recovered. Unfortunately, not for long before the new restrictions were imposed.

### Rush for Taking a Holiday Break in July

<br/>

As mentioned in the previous section, there is a sudden relapse of the traffic volume recovery in July. In here the difference compared to pre-Covid-19 times increases from 21% to 28%, while we before only could observe a decreasing trend in these percentages. Moreover, this traffic volume drop/valley has completely disappeared in August. This might be explained by the fact that, once the restrictions were lifted shortly before the summer holidays, people decided to take holiday immediately in July.

---

*Project subsidized by the Brussels-Capital Region - Innoviris.*  
<br/>
<center><img alt="RGB_innoviris_we fund your future_MAIN LOGO.jpg" src="src/assets/RGB_innoviris_we fund your future_MAIN LOGO.jpg" class="center" href="https://innoviris.brussels/" target="_blank" /></center>
<br/>
