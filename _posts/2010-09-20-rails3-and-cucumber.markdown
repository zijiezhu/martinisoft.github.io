---
layout: post
title: Rails 3 and Cucumber
topic: Code
---

Diving into Rails 3 has been fun and frustrating these past couple of months. There have been ups and downs, frustrations and entirely new experiences learning this framework all over again. Overall, I am incredibly impressed with the changes made to the framework.  I look back at my super-old Rails 1.0 projects when the framework first hit to now and I honestly can't recognize what I wrote back then. Back then Rails was an unpolished, rough framework with a noble idea of crushing the notions of XML configurations and repeating yourself.  Today it is still the opinionated framework I fell in love with, but with some flexibility in the right places.  You can still stick to their standard, but very easily apply your own thanks to cleverly implemented agnosticism of components.

With this fresh look at the new Rails, I decided to take the plunge with [RSpec](http://rspec.info/) and [Cucumber](http://cukes.info/) for testing versus Test::Unit. The first thing that took me was the syntax and how easy it really was to make tests. Cucumber feels like writing an epic novel of user interaction, discovery and sometimes failed experimentation.  My only initial hurdle was the slowness of loading the test environment upon running each test, but thanks to add-ons like [Spork](https://github.com/sporkrb/spork) I was able to speed things up a bit.

I'll need more time to become a serious expert, but I was shocked to see how quickly I could pick this system up. Things are organized, flexible and extensible.  Much like a framework I am used to using, except its there to help me be a better developer to myself and my clients. Of course I will have to remember to [Test All The Fucking Time](https://www.youtube.com/watch?v=LfmAzLAKKoc) when programming now. If you have a doubt, write more test coverage. Simple.
