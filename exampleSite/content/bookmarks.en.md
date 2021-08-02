---
title: Bookmarks
disableToc: true
---

Some important news, data, and articles to highlight.

## R resources

For those that want some R refresher, these resources can be useful:

- [YouTube Playlist](https://youtube.com/playlist?list=PL8Yi9OGQMf2EFHkS8-n5AXuaFpD_rXdoA) by Prof. James Scott, used in STA 301.

- [An introduction to R](https://stat545.com/) (with a focus on the tidyverse) by Jenny Bryan.

- [A ModernDive into R and the tidyverse](https://moderndive.com/index.html) (by Ismai and Kim).

- [R for the Rest of Us](https://rfortherestofus.com/resources/). (by David Keyes)

Cheatsheets for R are amazing! Here are two of my favorite so you can look up functions we will be using frequently explained in a simple way:

- [Data Visualization with ggplot2: Cheatsheet](https://sta235.netlify.com/images/data-visualization.pdf)

- [Data Transformation with dplyr: Cheatsheet](https://sta235.netlify.com/images/data-transformation.pdf)

## Multiple Regression

- [Regression Models with Multiple Regressors](https://www.econometrics-with-r.org/6-rmwmr.html) by C. Hanck et al. (2020), from their book *Introduction to Econometrics with R*
	- It also includes some R resources!

## Machine Learning

- ["Hands-On Machine Learning"](https://bradleyboehmke.github.io/HOML/) by B. Boehmke & B. Greenwell (2020). *Note: Great resource to see different packages for bagging, random forests, and boosting, beyond what we have seen in class!*

## Answer to some questions

Questions some time arise either in class or on the JITTs. Here, I'll leave some information that might be useful

- *How do I interpret log transformations of variables in a linear regression?*

**Answer**: A lot of the time, we want to transform our dependent variable `$ y $` to `$ \log(y) $`, so that it's normally distributed (e.g. income), or sometimes we could also have a covariates included in our model in a log form. How do we interpret the coefficients in a linear regression model under these transformations? A simple approximation can be made given the differentiation of the logarithm (e.g. `$ \frac{\partial \log(x)}{\partial x} = \frac{1}{x} $`), and you can actually interpret them as percentage changes! Take a look at this article to see how to exactly interpret these coefficients, depending on whether your dependent or independent variable (or both!) are in log form. {{% button href="https://data.library.virginia.edu/interpreting-log-transformations-in-a-linear-model/" icon="fas fa-external-link-alt" icon-position="right" %}}Go to article{{% /button %}}

- *How can I use a function in R if I haven't seen it before?*

**Answer**: Most of the functions that you will need for the homework or assignments, we will see them in class. For example, I will show them in the slides (with their respective outputs), and in the live coding portions, I'll explain some of the arguments, and you can see them in action! Most of the times, however, functions can be much more complex that what we can cover in class, so the best suggestion is the following:

1) Study the syntax in the class examples: Try to understand what every argument does. What happens if you change something? Whoah!
2) Study the output of the function: A lot of the times, we save the object generated by a function (e.g. `m1 <- lm(y ~ x, data = d)`, will store the linear model of y on x on the object `m1`). You should study that object! See what other things are stored in the output, and how you can access them (here, `$` will be your best friend).
3) Study the help files: Package developers put a lot of effort on their help files (most of the time). If you have a question about a function, just type `?name` (where name is the name of the function), and a help file will pop open. Usually there you can see the syntax, see what arguments are available, etc.
4) Play around with code: This is the most important part. Learning how to code or how functions work is a hands on business!

- *Can you explain again the plot for statistical power?*

**Answer**: Yes! Here's a short clip that I hope makes it more clear. Be sure to reach out if you are still having questions about this. PS: In the Lady Tasting Tea example, as someone noted, what we obtained is the exact p-value for that test, and we were able to reject the null at a 5% significance level. If you had set a 1% threshold of `$ \alpha $`, though, we wouldn't have been able to reject it and our test wouldn't have had enough power!

{{< youtube src="https://www.youtube.com/embed/fPNcC1Ta6dI?controls=0" >}}

- *Can you explain how weights work?*

**Answer**: So I got a couple of questions both on office hours and on the JITT as well about weighting, so I thought I would just make a brief video explaining the idea behind it. This is a toy example made for you to understand the main idea behind weighting. In reality, you need to fit `glm(y ~ x1 + x2 + ..., data, family = binomial(link="logistic"))`, but hopefully you get that exact procedure both from class and the R code that's available (both Week 5 and Week 6). This is meant to give you an idea of what is going on behind the scenes when we build weights!

{{< youtube src="https://www.youtube.com/embed/xetSfegjPko?controls=0" >}}

- *Can you go over the Taylor Swift example again when talking about Two-Way Fixed Effects (TWFE) models?*

**Answer**: I got a question at the end of our last DD class asking to explain the Taylor Swift example again, and how it works in the context of a TWFE model. Here's a video with a more in-depth explanation. Note: If you feel comfortable with the R coding part, you can skip that part of the video and just watch the conceptual explanation at the beginning (up to min 13).

{{< youtube src="https://www.youtube.com/embed/MeHJe_oj-Lc" >}}

- *What are the mehtods available in the `caret` package?*

**Answer:** You can find all the methods that are supported [here](https://topepo.github.io/caret/available-models.html). Be aware that you will need to install different packages depending on the method you are using.