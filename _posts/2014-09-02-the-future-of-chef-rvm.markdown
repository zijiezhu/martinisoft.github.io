---
layout: post
title: The future of chef-rvm
total_time: 5 to 7 minutes
---

It was over a year ago that I asked [Fletcher][] if I could help him with [chef-rvm][] and he enthusiastically said yes. If you have been following or recently glancing at the project, you'll notice it has been a little while since the last release. To put it short, both Fletcher and I have been extremely busy with other projects, work, and life in general. I personally had some [demons to battle][demons] and disconnected from all of my projects at once to let me recuperate.

My personal time off as mentioned before has helped me put things into perspective and let me rejoin projects at my own pace. If you've ever thought about taking on open source in a maintainer role be sure to build in some break time. Open Source is literally _a second job_ that answers to everyone's needs, but generally pays nothing while asking for everything and can sometimes [invoke hatred][hate] from your users. It is emotionally taxing in a similar way to being at a Customer Service desk where you are bombarded with pleas for help charged with a modicum of frustration. This isn't a personal cry for help, but your glimpse into my perspective of things. I enjoy helping others and lending a hand where I can. This is why I wanted a break and not a new career.

## The road to 1.0

Fletcher and I have been in a few discussions about where to take chef-rvm because of the rapidly changing [Chef community][supermarket] and [cookbook patterns][environment-cookbooks]. In the sections below I will highlight the major changes and a little reasoning behind them.

### Moving to an [LWRP][]

One of the initial decisions was [a weekend experiment to re-write][refactor] the cookbook as an LWRP that is currently in a branch. So far this pattern is working out better than expected and will help us shed the need for an [rvm-gem][] that is no longer maintained by the [rvm][] team. We are pioneering a better way to execute with the rvm environment via Chef. The RVM maintainer, [Michael Papis][mpapis] is helping us on this front to make sure we're doing things correctly by rvm for execution. This change will also help us prepare for the upcoming [RVM 2.0][rvm2] release by leveraging more of rvm command api.

### Declaring bankruptcy on issues

If you have looked at the repository lately, issues have been piling up over time. Some of them dating back [over 2 years ago][old-issue] and still labeled as 'in progress'. Fletcher and I are both extremely sorry for the lack of response or follow-up from us on many of these issues. Again as mentioned before, we have been neglecting the project for some time now. In order to move forward with 1.0, we will be closing any issues older than 6 months. Each one will contain a message encouraging the issue creator to follow up with updated information and re-open the issue.

### Adding a Code of Conduct & Contribution Guide

To help foster equality and respect, we will be adopting a code of conduct along with a contribution guide. The Chef community has [begun to adopt a policy][conduct] and we will be adding something similar to the repository as a reminder. Remember there are humans at the other end of that github issue, email, or comment and I personally want this cookbook to be as friendly and inviting as the Ruby community itself. To put it bluntly, [don't be an asshole][demands].

## Adding more maintainers

The elephant in the room I wanted to address here is adding more maintainers to the chef-rvm project. There is [an open issue][maintainers] for this and it will get addressed past the 1.0 release by Fletcher since it is his project. Fletcher and I will be at the [Chef Community Summit][summit] in Seattle. If you are attending, we encourage you to say hello to either one of us. We would love to arrange a little hack session while there if possible.

## 2.0 and beyond

What does the future hold beyond 1.0? Once 1.0 is stable and out there, chef-rvm will version along side the rvm project via [semver][]. The 1.x releases will be rvm 1.x compatible while the chef-rvm 2.x releases will target rvm2. There has been discussion between Fletcher and I about shedding the data bag based recipes into a separate wrapper cookbook to maintain the current 0.9 functionality and keep the LWRP cookbook small and focused. We're a little bit off from that decision and will probably open it as a github issue to discuss it with the community at large and go from there. As mentioned above, we'll be looking to add more people with commit access in the near future.

[Fletcher]: https://github.com/fnichol
[chef-rvm]: https://github.com/fnichol/chef-rvm
[demons]: http://martinisoftware.com/2014/05/02/burnout--my-struggle-with-imposter-syndrome.html
[hate]: https://sethvargo.com/leaving-chef/
[supermarket]: https://supermarket.getchef.com/
[environment-cookbooks]: http://blog.vialstudios.com/the-environment-cookbook-pattern/
[refactor]: https://github.com/fnichol/chef-rvm/pull/235
[rvm-gem]: https://github.com/wayneeseguin/rvm-gem
[rvm]: http://rvm.io/
[rvm2]: https://github.com/rvm/rvm
[old-issue]: https://github.com/fnichol/chef-rvm/issues/68
[semver]: http://semver.org/
[maintainers]: https://github.com/fnichol/chef-rvm/issues/232
[summit]: http://www.getchef.com/summit/
[conduct]: http://www.getchef.com/blog/2014/08/27/behaving-responsibly-in-the-chef-community/
[mpapis]: https://github.com/mpapis
[LWRP]: http://docs.getchef.com/lwrp.html
[demands]: https://speakerdeck.com/sethvargo/dealing-with-the-demands-of-the-open-source-community