---
layout: post
title: Adventures in Makefiles
topic: Code
---

Writing Makefiles is painful.  Especially in multiple platforms.  Check out the source code to any C or C++ based application to see what I mean.  You'll quickly lose your sanity wrapping your brain around the syntax, scope and depth of these files.  Thankfully there are tools out there to make this job much easier, but which one?  I chose Premake.

### Looking Around

Initially I gave CMake and Scons a good run for the money.  You'll see my struggle with this issue in Listbotto.  Going back and forth, editing and referencing documentation.  After nearly two full days I finally got a working compile, but at what cost?  Nearly two full days I could have been writing code!  My search for a proper tool finally landed me at the doorstep of [Premake](http://industriousone.com/premake). 

Premake is written in C and LUA by [3 people](http://sourceforge.net/project/memberlist.php?group_id=71616). LUA is an embeddable scripting language that has been around for years.  It's also been used in projects like [Garry's Mod](http://www.garrysmod.com/) and [FarCry](http://www.farcrygame.com/).  There is beauty in both its simplicity and power as a language because you can extend the features.  You'll also find lots of support, books, documentation, and help from various communities that use the language, which is a plus.

### Switching To Premake

After making the decision on Premake, switching was amazingly easy.  This was partly because the site has some recipes to get you started.  After adding all the directories I finally got a compile to happen in 10 minutes.  I think the neighbors might have heard my cries of joy.

Soon after the switch I had other libraries added in, compiling, working.  I was personally relieved to not only put the whole build tools issue behind me, but to finally look at my code again.  I honestly compare this to how Ruby on Rails takes a lot of the pain away with web application development.  Much of the heavy lifting is done, just write code! 

It wasn't all sparkles and fun though because there are some drawbacks to me choosing this system, but I can live with them for the time being.

### It Wasn't All Perfect

Premake (as of 4.0) does not have a way to generate projects for XCode, though it is planned for 4.1 and 4.2.  If you compare it to tools like CMake, you honestly won't get the control you're seeking, but you can add it if needed.  I also found a gotcha with the syntax, but it was quickly figured out and I'll be submitting some patches soon.

### Final Thoughts

This post is not meant to start a flame war about which build tool is better.  I firmly believe each serves a great purpose based on what you need.  It took many years for the KDevelop project to switch from Make to CMake.  They even tried SCons, but found CMake to be what the doctor ordered.  Some people I know swear by SCons, while others say CMake is amazing. It's all very simple, pick the tool for the job you need and one you'll love to use.  

Premake was a joy to work with in comparison to the others I tried, which is why it stuck.  Your mileage may vary of course.  Now I need to get back to coding.