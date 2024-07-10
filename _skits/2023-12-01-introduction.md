---
layout: skit_detail
title: Introduction
image: src/assets/SDTPhase5.png
excerpt: More and more assets are instrumented and connected, in order to collect usage and performance data such that they can be monitored (semi-)continuously. A large number of sensors can be installed which log data in high frequency, resulting in a large amount of data being collected. Typically, these large volumes of data are transferred to a central server, where they are further analysed. This is not always optimal however
notebook:
---


<p class="text-center">
  <iframe src="https://player.vimeo.com/video/612907452?h=1c07951c12&color=e700ef" class="max-w-full mx-auto" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
</p>

## Description
{: .text-3xl .font-bold .mb-4 .py-8}

More and more assets are instrumented and connected, in order to collect usage and performance data such that
they can be monitored (semi-)continuously. A large number of sensors can be installed which log data in high frequency, resulting in a large amount of data being collected. Typically, these large volumes of data are transferred to a central server, where they are further analysed. This is not always optimal however:

- a stable communication mechanism is required which can be very expensive or is sometimes simply not available. A vehicle operating in a remote area for example doesn't always have a decent connection available, and sending huge amounts of data through a satellite connection is quite expensive.

- if a continuous communication mechanism is not guaranteed, the data is typically stored locally first until it can be offloaded when communication can be established. However, providing storage also has an associated cost and if data is not offloaded periodically, storage will run out and parts of the data will need to be overwritten.

- when data can be offloaded, e.g. a vehicle is close to a hotspot with a communication mechanism, this has to happen in a limited amount of time. Requiring a vehicle to stay with the sole purpose of offloading data is not acceptable. As such, it is not always possible to offload all data at once.


In such kind of situations, data compression can be applied in order to reduce the size of the data that needs to be stored or transferred. Typically, lossless data compression techniques (such as zip) are considered, but these are suboptimal: not only are they resource demanding, they also consider each data point as equally important. However, since assets rarely fail, data representing normal behaviour is available in abundant quantities, while data representing abnormal behaviour is rather rare. In most cases, the abnormal data is much more interesting to retain at a high level of detail, as a thorough analysis of the abnormality is typically performed in order to determine the root cause. More intelligent data retention methods are able to distinguish between high and low informative data, i.e. abnormal and normal usage data, and can compress the data with low informativeness to a higher degree than the data with high informativeness.


### Business goal
{: .text-2xl .font-bold .mb-4 .py-8}

The business goal related to this Starter Kit is **intelligent data retention**. More specifically, we will present a technique called *Swinging Door Trending* [1] that considers the informativeness of the data in order to retain at high frequency the interesting data while reducing the frequency of the less interesting data, thereby optimally using the storage or communication means of the asset.  The level of informativeness of the data is typically linked to the application for which the data is used. In this Starter Kit, an **event detection algorithm** will be used to validate the effectiveness of the technique. An intelligent data retention technique should effectively **retain the most important data points** such that the results of the application, in this case event detection, will be the same or only slightly different at most.

### Application context
{: .text-2xl .font-bold .mb-4 .py-8}

- Professional vehicles, such as cranes, trucks or airplanes, operating in remote areas without high-speed communication means

- Wearable devices with a limited amount of memory and computing power that need to transfer data to secondary devices (e.g. a mobile phone)

- Mobile industrial assets, such as compressors, that are leased and typically not connected to a company's internal internet infrastructure for safety reasons

- ...

### Starter Kit outline
{: .text-2xl .font-bold .mb-4 .py-8}

We will first describe the dataset that we will be using for this Starter Kit, which consists of accelerometer data containing six time series signals. Then, we conceptually explain the Swinging Door Trending technique, and apply this on the six signals separately. Afterwards, we apply the technique on the six signals at once, which makes sense since accelerometer signals are often correlated. We then evaluate the results of both compression approaches on a technical level by considering how much they manage to compress the original signals and what is the associated error. Finally, we validate the compression within a concrete application, i.e. event detection.

### Dataset
{: .text-2xl .font-bold .mb-4 .py-8}

The dataset used in this Starter Kit concerns over 100 drives of a vehicle that stores usage data while driving. The vehicle does not have a continuous communication means and thus cannot send the usage data to the centralized server continuously. Data can only be transferred when the vehicle reaches a location where a hotspot is installed to off-load the data. In this case, the hotspot is located at the entry of a parking spot, so the amount of time the vehicle is in range of the hostpot is limited, resulting in small amounts of data that can be off-loaded at once. The dataset consists of accelerometer data that is aggregated:
the raw data is sampled at 200 Hz and two aggregations are calculated and retained each second,
the **min** and **max** value.
This results in six signals, identified as **minXAcc, maxXAcc, minYAcc, maxYAcc, minZAcc** and **maxZAcc** at 1 Hz, as shown in the table below.
