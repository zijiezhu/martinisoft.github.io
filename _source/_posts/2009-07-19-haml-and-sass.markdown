---
layout: post
title: Haml and Sass with Rails
---

Getting back into the latest Rails and installing the latest version of the greatest HTML markup system ever was a little tougher than expected.  Turns out the new hotness with Rails since 2.1 is to config.gem everything, which makes sense.  This doesn't work well for things like HAML, which expect to be plugins.  Luckily you can conform to the new trend without littering your vendor/plugins folder.

### Installing HAML and Sass

You must first do a basic gem install of haml thusly:

<pre>
    $ sudo gem install haml
</pre>

Once completed you'll need to add the following to your environment.rb

<pre>
    config.gem "haml"
</pre>

Next comes the cool trick...

### The Trick

As of Rails 2.0, the default load order for configuration is as follows:

1. config/preinitializer.rb (if the file exists)
2. config/environment.rb
3. config/environments/\* (defaults to your current environment)
4. config/initializers/\*.rb

You have to place the following in a new file inside the config/initializers/ folder (I called mine haml_and_sass.rb) in order to get HAML to properly load, which allows you to configure its options as well.

<pre>
    # Init HAML
    Haml.init_rails(binding)
</pre>

Once you add that, SASS will work beautifully and allow you to configure it normally.
