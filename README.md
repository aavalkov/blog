#Coding Blog

This is a blog-type site. Users can sign up, log in/out, and post on the blog. Users can also edit, delete posts, but only if they are logged in and on a blog entry that they wrote.

The project is for my Epicodus conventional rails assessment.

##Author
[Anna Valkov](http://github.com/aavalkov.com)

##Setup
In your terminal, clone the repo:

```console
$ clone https://github.com/aavalkov/blog.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.


##License
MIT
