# Sonic Jam


## Description

This is an extremely basic rails server designed for allowing multiple people to
collaborate together on making "music" for the sonic-pi project.

All it does is allow you to copy a sonic-pi buffer into this webapp.  All the
various buffers are then compiled together and exposed at an endpoint.  Each
buffer is wrapped up in it's own pseudo method as a vague attempt at limiting
the scope of people nuking global variables.

Very very much thrown together and a WIP - PR's are welcome!

## Running your own sonic-pi hacknight.

1. Install [SonicPi](http://sonic-pi.net/)
2. Install [sonic-pi-cli](https://github.com/Widdershin/sonic-pi-cli)
3. Spin up a copy of this repo (example at https://sonic-jam.herokuapp.com/ )
4. Curl in the compiled ruby scripts: `curl https://sonic-jam.herokuapp.com/buffers/compiled | sonic_pi`

You don't _have_ to run sonic pi on a raspberry pi (of course, it's way cooler if you do ;) , I found
[this guide on autoboot and sonic-pi](https://rbnrpi.wordpress.com/autoboot-for-telegram-and-sonic-pi-jukebox/) quite handy for getting the pi to start in Xserver mode (which the sonic pi requires) but so that I was still able to control it
headlessly.

For my use case the pi runs a cron every minute and just pulls in the latest version of the compiled code.

## Stuff to do

Endless.  This was put together in a morning, and I'm probably not going to update it much more.  It would be nice
if the pi could terminate loops which were no longer used (e.g. stop the threads and start it up again).  I'll
probably just end up adding a stop every so often.

There may already be existing projects for collaboration, I suspect there are - but I couldn't find them.

Happy hacking ;)
