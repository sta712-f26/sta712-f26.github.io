---
layout: page
title: Syllabus
description: >-
    Course policies and information.
---

# Syllabus
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

*Note: this syllabus may change in response to changing public health circumstances or university protocols.*

## Overview

Welcome to STA 712! This course covers *generalized linear models* (GLMs), which generalize the linear regression models you learned in STA 612 to other types of response variables. We will cover both the theory and applications of generalized linear models, and the computational mathematics needed to fit these models. Throughout the semester you will work with real data from a variety of sources, and we will emphasize reproducibility, checking assumptions, and thoughtful data analysis.


**Time:** MWF 1:00 - 1:50

**Location:** Manchester 017

**Professor:** Ciaran Evans

**Office:** Manchester 329

**Email:** evansc@wfu.edu *(please allow 24 hours for email responses during the week, and longer on weekends)*

## Course materials

**Laptops:** You will need a laptop for this class, and you will often need it during class. I recommend bringing your laptop each day.

**Textbook and supplementary notes:**

* *Generalized Linear Models with Examples in R*, by Dunn and Smyth. This book is very readable and has lots of examples and code. 

* [Supplementary course notes](https://ciaran-evans-sta-712-notes.share.connect.posit.cloud/), especially covering topics which are important to the class but do not appear in Dunn and Smyth.

**Additional texts:** Here are some texts that are good additional resources, especially for topics which are not discussed in Dunn and Smyth. I will sometimes assign supplementary readings from these sources. You are not expected to purchase any of these books! All can be found either electronically through the library, or for free online. 

* *Applied Longitudinal Analysis* (2nd edition), by Fitzmaurice, Laird, and Ware. This is a fantastic and very readable textbook. We will use certain sections of this book as references for dependent data and mixed models. This book is available electronically at the ZSR library.

* [*The Elements of Statistical Learning*](https://hastie.su.domains/ElemStatLearn/) (2nd edition), by Hastie, Tibshirani, and Friedman. This is a great reference for statistical learning topics. Much of the book is outside the scope of the class, but some parts will be a very useful reference when we discuss prediction, error, and cross validation. The book can be downloaded, *free*, at the link provided.

* [*Veridical Data Science*](https://vdsbook.com/), by Yu and Barter. This is a data science textbook that can be used at a variety of levels. We will go much more in depth than this book with regression, but I like some of the high-level discussion about the data science process, and their paradigm on data science -- Predictability, Computability, and Stability (PCS).  The book is available, *free*, at the link provided.

* For an intuitive explanation of GLMs, with additional examples and case studies, I recommend [Beyond Multiple Linear Regression](https://bookdown.org/roback/bookdown-BeyondMLR/), by Roback and Legler. The textbook is available, *free*, at the link provided.

**Software:** We will be using the statistical software [R](https://cran.r-project.org/), through the interface [RStudio](https://posit.co/download/rstudio-desktop/) for working with data and statistical modeling. You will need to download R and RStudio onto your laptop.

## Learning goals

By the end of this class, you will be able to:

* Clean, transform, and manipulate data to fit generalized linear regression models, and create visualizations which summarize the distribution of a single variable and the relationships between multiple variables.
* Translate a research question into a statistical question, and identify statistical methods that can be used to answer that statistical question.
* Choose an appropriate statistical method to model the relationship between a response variable and one or more explanatory variables, justify why the chosen method is appropriate, fit the model using statistical software, and report and interpret the results.
* Assess the model assumptions and performance for a fitted model; identify potential modeling issues such as outliers, multicollinearity, overdispersion, zero-inflation, and dependent data; and adjust the model as needed.
* Interpret, make predictions, and do inference with statistical models to address research questions of interest.
* Use statistical theory and simulation studies to characterize the properties of statistical models and their assumptions, and explore the potential consequences of different modeling choices.
* Apply statistical modeling and inference tools to real data to answer open-ended research questions, and communicate the results in a written report.

## Getting help

If you have any questions about the course (or statistics in general!), please don't hesitate to ask! I am available during office hours, by appointment, or via email. If you're emailing about an issue with R, please include a minimum working example (everything I need to reproduce the issue you encountered). 

Keep in mind that debugging software issues can take time, so make sure to start the assignments early in case you run into problems.

**Office hours:** (Manchester 329) 

* Monday 2 - 3pm
* Wednesday 2 - 3:30pm
* Thursday 4 - 5pm

## Course policies

### Communication

While course materials will be posted on the course website, I will send messages and announcements through Canvas. Please make sure your Canvas account is set up so that you receive emails when I send these messages.

### Participation and illness

Attendance is important, and you are expected to participate actively in class activities and discussions during lecture. However, your health, and the health of your peers, is crucial. If you are ill, please do not come to class or office hours. All class materials will be posted online, and I can meet with you one-on-one when you have recovered. If you need office hours when you are ill, I am happy to communicate via email or Zoom. Extensions on coursework may be granted on an individual basis under extenuating circumstances.

### Extensions

You have a bank of **5** extension days, which you may use over the course of the semester. You may use either 1 or 2 extension days for a given homework (making the assignment due either 24 or 48 hours after the original due date). If you plan to use an extension, you must email me before the assignment is due.

Extensions in extenuating circumstances, such as family emergencies, will be handled separately and on an individual basis.

### Accessibility

If you require accommodations due to a disability or other learning differences, contact the Center for Learning, Access, and Student Success  at 336-758-5929 or class@wfu.edu as soon as possible to better ensure that such accommodations are implemented in a timely fashion. Please feel free to contact me, and I will be happy to discuss any necessary accommodations. I always like to know how to help my students feel comfortable and successful in our course.

**Scent-free zone:** The 3rd floor of Manchester is a scent-free zone. Please refrain from wearing perfume, cologne, scented lotion, body spray, and all other scented products if visiting the third floor.

### Mental health

All of us benefit from support during times of struggle. You are not alone. There are many helpful
resources available on campus and an important part of the college experience is learning how to ask for help. Asking for support sooner rather than later is often helpful.

If you or anyone you know experiences any academic stress, difficult life events, or feelings like anxiety or depression, we strongly encourage you to seek support. The University Counseling Center is here to help: call 336-758-5273 or visit their website at [https://counselingcenter.wfu.edu/](https://counselingcenter.wfu.edu/).

If you or someone you know is feeling suicidal or in danger of self-harm, call someone immediately, day or night: 
Counseling Center: 336-758-5273

If the situation is life threatening, call the police: 
911 or 336-758-5911 (campus police)


### AI policy, use of outside resources, and collaboration

Statistics, coding, and data science do not exist in a vacuum, and practicing statisticians and data scientists rarely find themselves in a situation in which it is impossible to use any outside resources. Unless otherwise stated, on **homework assignments** and **class activities** you are therefore allowed to:

* use AI tools (e.g. ChatGPT, Gemini, Claude, etc.)
* use online resources such as freely available textbooks, vignettes, lecture notes, and examples
* use online resources for sharing code, such as StackOverflow
* collaborate with other students

However, there is a difference between what you are *allowed* to do, and what I would *recommend* you do. My goal in this course is to help you develop expertise in GLMs and related methods, and to help you build your statistical thinking. If you rely too heavily on AI tools to complete your work, it seems unlikely that you will achieve those learning goals.  Furthermore, a classroom setting is a low-stakes environment for you to practice and develop your skills. If something goes wrong in your analysis, I can just give you feedback for next time.

For all of these reasons, I highly encourage you to limit your use of LLMs. In particular, I never want you to be in a situation in which you are not the one making the big decisions. This means that you should **avoid** asking questions like:

* "What model should I use?"
* "What hypotheses should I test?"
* "What variables should I include?"

On the other hand, it is fine to use an LLM in the same way you would Google a specific, focused question, such as:

* "What R packages exist for fitting a zero-inflated Poisson model?"
* "What does this error message mean?"
* "How do I remove missing values from a column in a dataframe?"

And remember, if you ever get stuck, I am happy to discuss assignments and material in office hours and over email.

**Class rules for AI, outside resources, and collaboration:**

* These resources may be used, unless otherwise stated, on homework and class activities
* These resources may *not* be used on exams
* If you have obtained help from the internet or an AI tool, you must **explicitly cite** where you have obtained the help. Any use that is not explicitly cited will be treated as plagiarism and may result in a grade of 0. Directly copying discussion, code, interpretation, or mathematical derivations will also be treated as plagiarism and may result in a grade of 0.
    * If the help was obtained from a site like StackOverflow, provide a URL to the post
    * If the help was was obtained from an AI tool, provide the name of the tool and the queries you used
* While you are encouraged to collaborate with other students on homework assignments, you may not copy code and/or answers directly from another student. If your solution was written with help from another student, acknowledge your collaborator(s) at the top of the assignment. Failure to acknowledge collaborators will be treated as plagiarism and may result in a grade of 0. If you copy someone else's work, both parties may receive a grade of 0.
* Rather than copying someone else's work, ask for help. You are not alone in this course!
* Ultimately, **you** are responsible for the work you submit. If I have any questions or concerns about your work, you will be asked to meet with me and explain your work and reasoning. If you are unable to provide a sufficient explanation of any work that you turn in, you will lose points on the assignment and may receive a grade of 0.

### Academic integrity

I expect and require that students conduct themselves in a manner according to the Wake Forest standard for academic integrity. Cheating or academic dishonesty of any kind will not be tolerated. For other information on these matters, please consult the [Code of Conduct](https://studentconduct.wfu.edu/). For Academic issues please see the [College Judicial System](https://studentconduct.wfu.edu/the-judicial-council/).

### Professionalism

Laptops will be used regularly in class, and you must bring one each day. You may also use laptops or tablets to take notes. Please refrain from using your cellphone, laptop, or tablet for anything other than coursework during class. 

## Course components

### Class participation

In general, I expect you to come to class and participate in the lecture and activities. Your class participation grade will consist of class activities and attendance at departmental seminars.

**Class activities:** This course will sometimes include short activities during class time to help your learning. Participation in class activities is expected (but you are not required to submit them).

**Department seminars:** Throughout the semester, the department will host visiting speakers who will give talks on a range of statistical topics. You will attend these seminars and submit a short (one or two paragraph) reflection on the talk and how it relates to material you have learned in your statistics courses. If you cannot attend the seminars due to a conflict, I will provide alternative talks available on YouTube. 

Reflections on department seminars will be due a week after the seminar (except in extenuating circumstances). Note: it is ok if you don't understand everything in a seminar talk! The goal is to be exposed to a broad range of topics in statistics and data science, and make connections with material you have seen in your statistics courses.

**Seminar dates:** TBA

### Assigned readings

There will be assigned readings posted on the course website, and you are expected to complete these readings to prepare for class. The readings will sometimes have additional details (e.g., examples, additional derivations, formal proofs) that we will not go over in class. You are responsible for all material covered in the assigned readings.

### Homework assignments

This course includes regular homework assignments to give you practice with the material and help your learning, and so I can give you feedback on your work. 

Grading for homework assignments will be based on a mixture of correctness, effort, and completion.   You are always expected to complete all required questions, and make a good-faith effort to answer all questions using course material. In some cases, I may ask you to **resubmit** portions of a homework assignment to address feedback and constructive criticism. I am particularly likely to ask for resubmissions on data analysis questions. 

If you are asked to resubmit part of an assignment, your grade on that portion will be based on the resubmission and will be added to your homework grade after the resubmission is received. I will typically allow about a week for resubmissions.

You are welcomed, and encouraged, to work with each other on homework assignments, but you must turn in your own work. If you copy someone else’s work, both parties may receive a 0 for the assignment grade. If you work with someone else, you must write the name of your collaborator(s) on your homework.

### Homework presentations

To give you practice communicating about the topics in this course, and to reinforce the material we learn, you will be required to do **three** homework presentations throughout the semester. In a homework presentation, you will meet with me individually (outside of class time) for 15-20 minutes and present a problem from a recent homework assignment (I will choose the problem, so you must be prepared to present any of the questions on the assignment). For questions with many parts, I will choose some subset of the parts. If I ask you to present a data analysis, you will be expected to walk me through your reasoning, explain your chosen methods, and discuss and interpret the results in context -- you would not be asked to write all the code again from scratch, or anything like that.

You will be graded on your communication of the problem, your conceptual understanding of the material, the logic and correctness of your solution, your presentation skills, and your responses to my follow-up questions. A rubric will be provided ahead of time. 

Other information and requirements:

* While you may use notes, excessive reliance on notes will count against your score; your presentation should communicate to me that you understand and can explain the key steps of the solution.
* I will share a Google calendar with appointment slots which you can use to sign up for presentations
* You are welcome to complete the presentations early in the semester; once you have done three presentations, you are done!
* You may not sign up for more than 2 homework presentations in any given week
* If there is high demand to present in a given week, you may be restricted to one presentation that week

### Semester group project

Statistics and data science in the real world often involves in-depth analysis of complex datasets to answer one or more high-level research questions, and communicating these results to a wider audience. Projects provide an opportunity to develop these skills, and apply the tools you have learned in class and practiced on homework.

During the second half of the semester, you will work in groups to complete an extended data analysis project. For this project, you will be provided with a dataset and an open-ended research question. Your group will then be expected to explore the data, use appropriate statistical methods to address the research question, write a report detailing your findings, and present your results to Dr. Evans. 

In addition to these final deliverables, there will be several intermediate check-points along the way, requiring you to submit initial proposals and meet with Dr. Evans to discuss your research plans.

Further details and grading information will be provided when the project is released. 

### Exams

There will be one in-person midterm exam during the semester, and one cumulative final exam. More details on exams to follow.

**Midterm:** TBA

**Final exam:** Monday, December 14, 2pm

## Grading

| Component | Weight |
| --------- | ------ |
| Participation | 5% |
| Homework |  20%   |
| Homework presentations | 9% |
| Midterm exam    |  20%   |
| Semester project | 23% |
| Final exam | 23% |

I will use the standard grading scale (above a 93 is an A, above a 90 is an A-, above an 87 is a B+, etc.)

### Late work

* 30 minutes -- 24 hours late (after extensions): lose 20% of points
* 24 -- 48 hours late (after extensions): lose 40% of points.
* more than 48 hours late (after extensions): no credit

If you know you cannot turn in assignment (for instance, if you are ill or there is a family emergency), let me know before the assignment is due, and we will work something out. There will be no grade changes after our last day of class.

### Regrade requests

If you believe an error has been made in grading your work, you must email me within one week of receiving the graded homework or exam.

