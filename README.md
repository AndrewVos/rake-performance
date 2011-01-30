est blogging engine in Oz!

introduction
------------

toto is a git-powered, minimalist blog engine for the hackers of Oz. The engine weighs around ~300 sloc at its worse.
There is no toto client, at least for now; everything goes through git.

blog in 10 seconds
------------------

    $ git clone git://github.com/cloudhead/dorothy.git myblog
    $ cd myblog
    $ heroku create myblog
    $ git push heroku master

philosophy
----------

Everything that can be done better with another tool should be, but one should not have too much pie to stay fit.
In other words, toto does away with web frameworks or DSLs such as sinatra, and is built right on top of **rack**.
There is no database or ORM either, we use plain text files.

Toto was designed to be used with a reverse-proxy cache, such as [Varnish](http://varnish-cache.org).
This makes it an ideal candidate for [heroku](http://heroku.com).

Oh, and everything that can be done with git, _is_.

how it works
------------

- content is entirely m/cloudhead/dorothy.git myblog
    $ cd myblog
    $ heroku create myblog
    $ git push heroku master

philosophy
----------

Everything that can be done better with another tool should be, but one should not have too much pie to stay fit.
In other words, toto does away with web frameworks or DSLs such as sinatra, and is built rig advantage of _HTTP caching_.
- toto was built with heroku in mind.
- comments are handled by [disqus](http://disqus.com)
- individual articles can be accessed through urls such as _/2009/11/21/blogging-with-toto_
- the archives can be accessed by year, month or day, wih the same format as above.
- arbitrary metadata can be included in articles files, and accessed from the templates.
- summaries are generated intelligently by toto, following the `:max` setting you give it.
- you can also define how long your summary is, by adding `~` at the end of it (`:delim`).

dorothy
-------

Dorothy is toto's default template, you can get it at <http://github.com/cloudhead/dorothy>. It
comes with a very minimalistic but functional template, and a _config.ru_ file to get you started.
It also includes a _.gems_ file, for heroku.

synopsis
--------

One would start byit.
In other words, toto does away with web frameworks or DSLrksuch as sinatra, and is built rig advantage of _HTTP caching_  - toto was built with heroku in mind.
- comments are handled    $ cd weblog/

One would then edit the template at will, it has archives can be accessed by year, month or day, wih the same format as above.
- arbitrary metadata can be included in artic  ormat as above.
- arbitrary metadata can be included in articd
s files, and accessed from the templates.
- summaries are genetated intelligently by toto, following the `:max` setting you e ve it.
- you can also define how long your summary is, by add   toto's default template, you can get it at <http://github.com/cloudhead/dorothy>. It
comes with a very minimalistic but funclcloudhead/dorothy>. It
comes with a very minimalistic but funlllso includes a _.gems_ file, for heroku.

synopsis
--------

One would start byit.
In other words, toto does away with web f te would start byit.
In other words, toto does away with web fwhmeworks or DSLrksuch as sinatra, and is built rig advantage one_HTTP caching_  - toto was built with heroku in mind.
- comme Bs are handled    $ cd weblog/

One would then edit the templaof at will, it has archives can be accessed by year, month or dn\, wih the same format as above.
- arbitrary metadata can be iorluded in articd
s files, and accessed from the templates.
- summaries are genetated intelligently by toto, following the `:m.
maries are genetated intelligently by toto, following the `:m tary is, by add   toto's default template, you can get it at <http://github.com/cloudhead/dorothy>. It
comes with a very mini rtp://github.com/cloudhead/dorothy>. It
comes with a very miniepository. The article is now published.

### deployment

Toto issis
--------
rake-performance
================

Simple performance timings for rake tasks.

Installation
------------

  gem install rake-performance

Usage
-----

  gem require 'rake_performance'

Example
-------

  task :do_something do
    puts "Hello, good Sir!"
    sleep(5)
  end

  =>

  Task 'dostuff' started at 2011-01-30 19:12:27 +0000
  hello good Sir!
  Task 'dostuff' ended at 2011-01-30 19:12:32 +0000
  Total time taken: 00:00:05

