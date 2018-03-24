---
date: 2016-08-30 21:39:09 -0700
title: "Wake-Up Light v2"
description: "Wake-up light: now with more lumens, more bits, and more colors."
categories: projects, wakeup light
---

It's been a while since the last update on my [wake-up light headboard](/posts/wake-up-light-1/) project and sunrise ain't getting
any earlier. Why haven't I finished it?

Well, the answer is that it was finished (aside from the final installation), but after hooking everything up and doing a test
run on the bedroom floor, it became obvious that the LED lights I had bought before were far too dim to wake all except the
lightest of sleepers.

So I decided to swap to a 5050 LED strip. And while I'm at it, might as well make them RGB LEDs because when, in the history of
home lighting projects, has anybody ever regretted using colourful lights instead of just plain boring white ones? And then,
because the previous 8-bit PWM control was not as smooth as I'd like, I decided to add an
[Adafruit PWM chip](https://www.adafruit.com/product/1455) so that all three colour channels can shift with glorious 16-bit
smoothness. I also swapped to an Arduino Uno (with added HC-05 to preserve the Bluetooth functionality) because I got tired of
fighting with the Simblee's poor documentation. In the future, when I am more experienced and better at digging through header
files, I may revisit the Simblee for another project.

Oh, and because the 5050 LED strip is much bigger and uglier than the pretty little fairy light, the entire 
[headboard set-up](/assets/images/2016/headboard-sketch.jpg) had to be redesigned, too.

There was a lesson in there somewhere... oh, right! **Making hardware design changes is expensive and time consuming. Do it right on
the first try next time.**

But anyway, here is the new system, all soldered up and ready to start shining:

![Photo of finished PCB](/assets/images/2016/headboard-rev2-circuit.jpg)
<span class="caption">On the bright side, my soldering and board layout skills have improved. No spaghetti wires here!</span>

The updated progress checklist:

* Headboard construction - DONE!
* Circuitry - DONE!
* Arduino programming - in progress
* Android automation - done, just need an Arduino to be able to send commands to.