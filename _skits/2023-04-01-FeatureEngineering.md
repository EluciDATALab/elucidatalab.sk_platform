---
layout: skit_detail
title: Feature Engineering
image: ../src/assets/FE_figure1.png
date:  2023-04-01
author: EluciDATALab
categories:
    - Feature Engineering
description: Feature engineering for AI
excerpt: "Most data mining and machine learning algorithms do not work well if you just feed them your raw data: such data often contains noise and the most relevant distinguishing information is often implicit. For example, raw sensor data just contains a timestamp and a corresponding value, while interesting aspects of it might be the trends contained within or the number of times a threshold is exceeded.

Feature engineering is the process of extracting from the raw data the most relevant distinguishing characteristics that will be presented to the algorithm during modeling. It is a way of deriving new information from the existing data, so that its characteristics are more explicitly represented. The resulting features are eventually feed to the AI/ML algorithm of the model. In practice, the feature engineering step is achieved by the selection of the most appropriate parameters, or the composition of new features by manipulation, transformation and combination of the raw data.

Feature engineering is one of the most important and creative steps in the data science workflow. However, there is no clearly-defined formal process for engineering features and, consequently, this requires a lot of creativity, a good understanding of the domain and of the available data, some trial-and-error, etc. It is also desirable to have upfront an idea of the modeling and analysis task for which you want to use the resulting features, as this might help you to identify relevant features."
notebook: https://colab.research.google.com/github/EluciDATALab/elucidatalab.starterkits/blob/main/notebooks/SK_3_3_Feature_Engineering/elucidata_demonstrator_3_3.ipynb
---

## Introduction
### Description

<br/>

Most data mining and machine learning algorithms do not work well if you just feed them your raw data: such data often contains noise and the most relevant distinguishing information is often implicit. For example, raw sensor data just contains a timestamp and a corresponding value, while interesting aspects of it might be the trends contained within or the number of times a threshold is exceeded.

<br/>

Feature engineering is the process of extracting from the raw data the most relevant distinguishing characteristics that will be presented to the algorithm during modeling. It is a way of deriving new information from the existing data, so that its characteristics are more explicitly represented. The resulting features are eventually feed to the AI/ML algorithm of the model. In practice, the feature engineering step is achieved by the selection of the most appropriate parameters, or the composition of new features by manipulation, transformation and combination of the raw data.

<br/>

Feature engineering is one of the most important and creative steps in the data science workflow. However, there is no clearly-defined formal process for engineering features and, consequently, this requires a lot of creativity, a good understanding of the domain and of the available data, some trial-and-error, etc. It is also desirable to have upfront an idea of the modeling and analysis task for which you want to use the resulting features, as this might help you to identify relevant features.

<br/>
### Business goal

<br/>

The overall goal of this Starter Kit is to present some **advanced feature engineering steps** related to **feature construction** and **extraction**. By keeping in mind **what is your business question** and **what is the corresponding data science task**, you will be able to derive **valuable features** that can be used in the next stage of your analysis.

<br/>
### Application context

<br/>

Feature engineering is one of the steps in the data science workflow with the most decisive impact on the accuracy of the model you want to develop. It is the final step before actually training the model and it defines how the input data will be fed to the model.

<br/>
### Starter Kit outline

<br/>

In this Starter Kit we use a dataset from the Regional Rail System of Pennsylvania. Before starting the feature extraction _per se_, we will first apply some basic preprocessing to the dataset and have a high-level overview of the data. We will then derive several interesting features from the dataset that can be used to characterise train rides and delays.
