---
layout: post
title: Nokogiri on Leopard
topic: Code
---

My first experience with [Regular Expressions](http://en.wikipedia.org/wiki/Regular_expression) was writing whats called a [web scraper](http://en.wikipedia.org/wiki/Web_scraping) to fetch weather data from Weather.com.  Back then, this would involve a ton of IF statements and a large array of data.  Very tedious and time consuming, but it was very educational.  Today, Ruby has a couple convenient libraries built for this sort of task.  Even a way to mimic a browser so you can get to pages normally reserved for site members.

After some careful research I settled on [Nokogiri](http://nokogiri.rubyforge.org/) because its the library of choice with [Mechanize](http://mechanize.rubyforge.org/), which I use to grab data from web sites and scrape the data from them easily.  Before you can really use this library on OSX Leopard, you have to jump through a few hoops.

Mechanize may give you an error message like so:

> WARNING: Nokogiri was built against LibXML version 2.7.3, but has dynamically loaded 2.6.16
> HI.  You're using libxml2 version 2.6.16 which is over 4 years old and has
> plenty of bugs.  We suggest that for maximum HTML/XML parsing pleasure, you
> upgrade your version of libxml2 and re-install nokogiri.  If you like using
> libxml2 version 2.6.16, but don't like this warning, please define the constant
> I_KNOW_I_AM_USING_AN_OLD_AND_BUGGY_VERSION_OF_LIBXML2 before requring nokogiri.

This is easy to fix, so here's how to get rolling in Leopard:

### Install the latest libxml2 and libxslt

Make a source directory somewhere and do the following commands to grab the latest versions of libxml2 and libxslt:

<pre>
    $ curl -O ftp://xmlsoft.org/libxml2/libxml2-2.7.3.tar.gz
    $ curl -O ftp://xmlsoft.org/libxml2/libxslt-1.1.24.tar.gz
</pre>

Once done, unpack both like so:

<pre>
    $ tar xzf libxml2-2.7.3.tar.gz
    $ tar xzf libxslt-1.1.24.tar.gz
</pre>

Now change into the libxml directory and build it:

<pre>
    $ ./configure
    $ make
    $ sudo make install
</pre>

Now jump back to the libxslt directory and do the same:

<pre>
    $ cd ../libxslt-1.1.24
    $ ./configure
    $ make
    $ sudo make install
</pre>

If you want, go ahead and delete the sources to save space. Now you're ready for the final step.

### Install Nokogiri

Now installing Nokogiri is super easy once we tell it where to link.

<pre>
    $ sudo gem install nokogiri -- --with-xml2-include=/usr/local/include/libxml2 --with-xml2-lib=/usr/local/lib
</pre>

Once you run that you are good to go.

