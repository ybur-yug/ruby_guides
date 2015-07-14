# Linux & OSX Installation

## About
While many distros of Linux and OSX contain Ruby by default, we are going to ensure we have the
latest and greateset version, as well as set ourselves up with the tools needed to handle multiple
versions, because this will be important to us later and has almost 0 cognitive cost to start.

On both Linux and OSX a great tool called `RVM`, or 'Ruby Version Manager' can easily get us set up
and ready to write some Ruby.

## Install
First, for security purposes we have to add in the `gpg` keys that rvm uses. This allows us to have a
very secure check on exactly what we are getting with the version of Ruby we download.

Don't worry about understanding the security keys or such gobbleteegook yet. We're beginners! It is
simply a good security measure. To do this, we have to open the terminal. For now, don't worry about
how strange and foreign it may be. On a Mac, open up spotlight and type `terminal`, or find it in
`Applications` in Finder. On Ubuntu we can find it by hitting `super` (the 'windows key' on many
keyboards) and typine `terminal`. Once we click it and open it we want to copy/paste the relevent
lines from below that DO NOT start with `#`. We will explore more into the terminal in the next
section.

```bash
# This will get and verify the security keys for RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# This will get us the `curl` function for bash to utilize in the next step
# But it only needs to be run on linux machines
apt-get install libcurl4-gnutls-dev

# This gets us RVM
curl -sSL https://get.rvm.io | bash -s stable
```

This installs the full suite of Rubies that we could possibly need to use. If you would like a more
in-depth look, you can check out this [RVM Screencast](http://screencasts.org/episodes/how-to-use-rvm).

Note to ignore the second command if you are on OSX, as you will already have curl.

### [Firing Up Ruby](link)
