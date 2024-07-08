---
excerpt: We have been collaborating with Materialise and Cr3do to create an AM knowledge base that can assist in all major AM steps. The success of this collaboration has led to the project being selected for the **ITEA Award of Excellence 2023 for Innovation**.
title: Collaboration with Materialise and Cr3do selected for the ITEA Award of Excellence for Innovation
excerpt_separator: <!--more-->
date: 2023-06-26
image: src/assets/samuel_itea_award1_piqsels.com-id-zmdsp.jpg
categories: Company
layout: post
---
<div class="text-md text-gray-700 ">


Joint collaboration with Materialise and Cr3do selected for the ITEA Award of Excellence 2023 for Innovation

 Although the additive manufacturing (AM) technology has evolved substantially over the last decades, the overall end to-end process involves many complex steps and still today requires manual input from an engineer at crucial points. We have been collaborating with Materialise and Cr3do to create an AM knowledge base that can assist in all major AM steps. The success of this collaboration has led to the project being selected for the ITEA Award of Excellence 2023 for Innovation

Materialise is the largest company active in 3D-printing world-wide. It was founded in 1990 in Leuven, Belgium and has grown to a company with more than 2.100 employees world-wide, with strong international presence in software, industrial and medical applications with AM. Materialise has the largest group of software developers for AM and with more than 250 high-end industrial printers, is the largest service provider of AM parts in Europe.
Cr3do is an SME specializing in generating personalized solutions for customers by using modern, smart manufacturing techniques such as AM and laser cutting, to lower the threshold for other SMEs to get started with these technologies. The company provides expertise, 3D modeling services and production of their solutions. Most customers are active in the architectural and residential development sector, for which Cr3do creates high-end 3D models and 3D visuals.
Although the AM technology has evolved substantially over the last decades, the overall end-to-end process involves many complex steps that still today requires manual input from an engineer at crucial points. We have been collaborating with Materialise and Cr3do in the context of the ITEA3-SAMUEL project to combine an AM engineer’s experience with data-driven machine-learning methods to create an AM knowledge base that can assist in all major AM steps. The focus of the Belgian partners is on use cases related to build-time estimation (BTE) and build preparation (e.g. part orientation and nesting).

Data-driven build-time estimation
Accurate estimation of build times of 3D objects is of great importance in the different phases of an AM process including: 1) during quotation, an estimation of build time is needed since it impacts the printing cost of a part significantly, 2) during build preparation, part orientation influences build time significantly, hence information on build time can be exploited to find the optimal part orientation and, 3) at planning level, information on build time allows for optimal planning, maximizing machine utilization and minimizing total production time.
The existing physics-based models can very precisely tackle this task but at the cost of spending a considerable amount of time. An alternative solution is to use a data-driven machine learning method for BTE. However, estimating build times of a dataset of objects with diverse and heterogeneous characteristics is a challenging task for a single learning algorithm.

<figure><img alt="3D objects build time" src="src/assets/samuel_itea_award2.png" /><figcaption>(left) Examples of the modeled 3D objects with diverse characteristics, (right) complex and non-linear relations between the objects’ volumes and their build times</figcaption></figure>
We therefore investigated the value of the ‘divide-and-conquer’ strategy in partitioning the dataset into subsets of homogeneous objects to facilitate the BTE task for the examined learning models. The usefulness of this strategy has been proven through performing comprehensive experiments. We proposed two different divide-and-conquer algorithms and the experimental results showed that both methods are indeed capable of providing accurate BTEs and can outperform the performance of a single learning method trained with all objects in the dataset. More specifically, the proposed algorithms yielded a mean relative estimation error below 10% for all objects and below 5% for around 40% of the objects in the dataset.

The proposed data-driven divide-and-conquer strategies and the obtained results were published in <a href="https://ieeexplore.ieee.org/xpl/conhome/9679833/proceeding">2021 International Conference on Data Mining Workshops (ICDMW) (DOI: 10.1109/ICDMW53433.2021.00041).</a>
</div>