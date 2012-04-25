---
layout: post
title: Adventures in automation
topic: Code
---

Been a little while since my last post here.  A short explanation of the last 4 months in bullet point format:

* Moved to Tampa
* Turned 25
* Overtime at work
* Studying for the CCNA and A+ exams

Time was a precious commodity the past few months and I finally got a chance to breathe, collect myself and write a new post.  While trying to write this post, I managed to update some of the code running this blog to help automate posting and updating of my resume.  

The one feature that I spent far too much time researching was converting my resume to pdf automatically when I publish a change.  I honestly don't update it that much, but I thought it would be an easy task to generate it once I updated it with some new information.  So my search began for a markdown to pdf tool. Ultimately I went with wkhtmltopdf, but I'll give some reasoning why I did not choose the other projects I found.

#### [HTMLDoc](http://www.htmldoc.org/)
Ultimately did not respect any CSS, so my pdf was this lifeless, unformatted page that looked like something out of the mid 90s.

#### [Prince](http://www.princexml.com/)
Very nice tool, the free one watermarks your pdf files and the "professional" license is nearly $500.  Would be nice to use for a commercial CMS where dynamic PDF download is needed.

#### [Flying Saucer](https://xhtmlrenderer.dev.java.net/)
Written in Java, so it was a bit complicated to setup, but could be called via JRuby.  Did not feel like respecting the print stylesheet either.

#### [wkhtmltopdf](http://code.google.com/p/wkhtmltopdf/)
Someone came up with the brilliant idea of making a command line wrapper around Qt's implementation of WebKit (the Safari browsing engine) purely for making PDFs out of HTML pages.  It worked flawlessly, except on my Snow Leopard mac when I feed it the option to load the print style.  I was forced to run this on an Ubuntu system I manage at home.

### Conclusion

I may make a second part to this post about the automation I've done on this blog, but for now you can take a peek at the commented code in the [Rakefile](http://github.com/martinisoft/martinisoft.github.com/blob/master/Rakefile)
