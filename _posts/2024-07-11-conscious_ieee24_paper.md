---
layout: post
title: Novel approach on contextual anomaly detection presented at IEEE International Conference on Evolving and Adaptive Systems 2024
date: 2024-07-11
author: Fabian Fingerhut
email: fabian.fingerhut@sirris.be
image: src/assets/conscious_ieee24_paper.webp
categories: [Awards, Projects, Papers]
excerpt: "Ensuring the smooth operation of industrial assets is more important than ever. Effective condition monitoring is crucial for maintaining optimal performance and avoiding costly downtime. However, condition monitoring of assets operating in highly dynamic environments (which is an inherent characteristic of many industrial processes) remains a challenge. How do you stay ahead of the curve when dealing with dynamic operating conditions of industrial processes?."
---
<!-- <div class="text-md text-gray-700 "> -->

Ensuring the smooth operation of industrial assets is more important than ever. Effective condition monitoring is crucial for maintaining optimal performance and avoiding costly downtime. However, condition monitoring of assets operating in highly dynamic environments (which is an inherent characteristic of many industrial processes) remains a challenge. How do you stay ahead of the curve when dealing with dynamic operating conditions of industrial processes?

At the 2024 IEEE International Conference on Evolving and Adaptive Intelligent Systems (IEEE EAIS 2024) in Madrid, we presented a novel method for raising alarms if performance deviations are detected while taking the dynamic operating conditions into account. Raising alarms about performance deviations helps operators to identify problems early. We showed that our method is performant and explainable.

<br/>
<center><img alt="Method" src="src/assets/conscious_ieee24_paper2.webp" class="center" /></center>
<br/>

The proposed methodology for anomaly detection takes varying operating contexts into account by extending the multi-view approach introduced in
<a href="https://ieeexplore.ieee.org/document/10194172" target="_blank" alt="Multi-view contextual performance profiling in rotating machinery" class="text-blue-600 underline">our previous paper</a>. During the “offline phase”, the asset’s operating modes are estimated using a separate set of parameters. These parameters, which profile the underlying process, form the “process view”. For instance, typical parameters indicative of the operating mode in a pump include the rotational speed and the water pressure. Grouping similar parameter configurations in the same operating mode enables taking changes of operating conditions into account. Additionally, a separate view profiles the asset’s vibration behavior. Vibrations are indicative of the asset’s performance. Hence, we refer to this view as “performance view”. By combining the results of both views, a comprehensive picture of the asset’s behavior under different operating conditions is constructed by means of context-specific vibration fingerprints.

During the “online phase”, our method continuously compares the observed vibrations with the vibration fingerprints. If they differ significantly, an alarm is sent out automatically to the operator indicating an anomaly. Since the underlying process is monitored separately in the process view, changes in observed vibrations caused by a change in the operating context will not trigger an alarm. At the same time, our approach tracks potential changes in the underlying operating context to prevent false alarms due to previously unseen operating conditions.

We demonstrated the applicability of our approach on real-world industrial data of feedwater pumps provided by our partners I-Care and Engie. Furthermore, we proved that our method could achieve a high performance on a publicly available datasets with gearboxes.

<br/>
<center><img alt="Presentation at conference " src="src/assets/conscious_ieee24_paper3.webp" class="center" /></center>
<br/>

Interested in further details? The peer-reviewed publication “Unsupervised context-sensitive anomaly detection on streaming data relying on multi-view profiling” is available in <a href="https://ieeexplore.ieee.org/document/10569106" target="_blank" alt="Unsupervised context-sensitive anomaly detection on streaming data relying on multi-view profiling" class="text-blue-600 underline">the proceedings of IEEE EAIS 2024 on IEEE Xplore</a>. This research was funded by the Flemish Government (AI Research Program) and by Flanders Innovation & Entrepreneurship (VLAIO) via the CONSCIOUS project (HBC.2020.2795).


<!-- </div> -->
