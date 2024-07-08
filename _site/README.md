<div align='center'>

<h1>Static Site Generator for the EluciDATA project of Sirris</h1>
<p>Static Site Generator for the EluciDATA project, which focuses on the research and providing any company who wishes to intrigue themselves into AI to explore the options</p>

<h4> <span> · </span> <a href="https://github.com/Steelings/jekyll-elucidata/blob/master/README.md"> Documentation </a> <span> · </span> <a href="https://github.com/Steelings/jekyll-elucidata/issues"> Report Bug </a> <span> · </span> <a href="https://github.com/Steelings/jekyll-elucidata/issues"> Request Feature </a> </h4>


</div>

# :notebook_with_decorative_cover: Table of Contents

- [About the Project](#star2-about-the-project)
- [Roadmap](#compass-roadmap)


## :star2: About the Project

### :dart: Features
- Jekyll
- Tailwind
- SEO
- RSS


## :toolbox: Getting Started

### :bangbang: Prerequisites

- This project uses npm as package manager<a href="https://www.npmjs.com/"> Here</a>
- This project uses jekyll, which is based on Ruby<a href="https://www.ruby-lang.org/en/"> Here</a>
```bash
gem install bundler jekyll
```
- This project uses Tailwind as front-end styling<a href="https://tailwindcss.com/docs/installation"> Here</a>
```bash
npm install -D tailwindcss
```


### :gear: Installation

Bundle the jekyll environment (This requires RubyGems)
```bash
bundle install
```
Install script packages
```bash
npm install -g npm-run-all
```
Install tailwind script access
```bash
npm install -g tailwindcss
```


### :running: Run Locally

Clone the project

```bash
https://github.com/Steelings/steelings.github.io

```
Go to the project directory
```bash
cd webapp
```
Install jekyll environment
```bash
bundle install
```
Install tailwindcss
```bash
npm install -D tailwindcss
```
Start the environment locally (http://localhost:4000/elucidata/)
```bash
npm start
```


## :compass: Documentation

### How to create a blog post

Navigate to the _posts folder and create a new markdown file.
This markdown file should have the following naming conventions: YEAR-MONTH-DAY-title.MARKUP (see <a href="[https://www.npmjs.com/](https://jekyllrb.com/docs/posts/)"> Here</a> for more in depth information as of why)
Example: 2024-02-28-my-first-blogpost.markdown

#### Blogpost parameters

Please make sure the markdown file starts and finishes with 3 dashes: '---'

A blog post should atleast contain the following:
* Layout: post
* Title: "your blog title here"
* Date: same naming convention as the blogpost name i.e: date:   2024-02-28 16:17:53 +0100
* author: "your author name here"
* read_time: "your readtime (estimated) in min here" i.e "5 min"
* categories: choose between 
    Engineering
    Data Science
    Future
    Research
    Development
    Company
and implement in the markdown file as follows: "categories: 
Algorithms". Please refrain from only using one category.
* image: "pathfile of blogpost image" i.e "src/assets/algorithm-selection.png"
You have to manually add images in the "src" folder before linking to them in your blog post.
* description: "your image alt description here" i.e "image of an algorithm". This is so when the image doesn't load for some reason, there is still informative text to the end user.
* excerpt: "your excerpt here". This should be a small description on what the blog post will be about i.e: "This is a test post to demonstrate adding additional data to a Markdown file for Jekyll."


An example markdown file could look like this:
```
---
layout: post
title:  "Testing jekyll demo setup"
date:   2024-02-28 16:17:53 +0100
author: John Doe
read_time: 5 min
categories:
    - Engineering
image: src/assets/engineering.jpeg
description: Example of a commonly used algorithm
excerpt: "This is a test post to demonstrate adding additional data to a Markdown file for Jekyll."
---
```

### How to create a starter kit

Navigate to the _posts folder and go one folder deeper, under the "skits" folder: _posts/skits/YOUR-MARKDOWN-FILE-HERE.markdown



### Starter kit parameters

Please make sure the markdown file starts and finishes with 3 dashes: '---'

A starter kit should countain the following:
* layout: skits
* title: your title here
* date: same as blogpost format
* author: your author here
* categories: same as blogpost format
* image: same as blogpost format
* description: your description here
* excerpt: your excerpt here
* difficulty (OPTIONAL): number between 1 and 5
* notebook: url to notebook i.e https://collab.research.google.com/yournotebookhere


An example starter kit markdown could look like this:
```
---
layout: skits
title:  Data Exploration
date:   2024-03-28 12:06:53 +0100
author: EluciDATA
categories:
    - Exploration
image: src/assets/engineering.jpeg
description: Example of a commonly used algorithm
excerpt: "When starting a data science project, it is often the case that one immediately starts experimenting with complex algorithms to arrive at a solution as quickly as possible, without having gained a clear understanding on the data first. In a number of cases, this leads to costly investments or flawed models because one started from the wrong assumptions, which don..."
difficulty: 3
notebook: your notebook URL
---
```



