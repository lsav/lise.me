---
permalink: /wakeup/
title: Smart Wake-up Headboard Light
---

This was a project to make a headboard that would look pretty and be useful. It has a built-in wake-up light that
accepts Bluetooth commands from an Android phone so that, as part of a more comprehensive morning wake-up routine,
my phone can send a command that triggers a sunrise emulation from my headboard.

Demo video:

<div class="video"><iframe src="https://www.youtube.com/embed/MBOkNSHl62o" frameborder="0" allowfullscreen></iframe></div>

The headboard was a collaboration between myself and my partner. Being both avid gym-goers yet also natural night owls,
we wanted something that would make it possible to get up in the morning to go the gym when it opens.

![Original headboard design sketch](http://lisesavard.com/assets/images/2016/headboard-sketch.jpg)
<span class="caption">Initial design sketch</span>

He designed the hardware for the
[first version](/assets/images/2016/headboard-circuit.jpg), which I later upgraded to include better PWM control
and more LED colours. I also did the hardware design for version 2.

![Block diagram of project](/assets/images/2016/headboard-uno-block.jpg)
<span class="caption">Block diagram of version 2</span>

As well, I did the bulk of the prototyping and soldering, but the particularly tricky debugging parts required
both brains.

![Photo of circuitry](/assets/images/2016/headboard-rev2-circuit.jpg)
<span class="caption">Photograph of circuitry</span>

The Arduino side was a full-on collaboration -- we pair programmed most of it. The code repo is viewable
[on GitHub](https://github.com/lsav/led-headboard).

Finally, I made the Android wake-up sequence, which was largely done with
[Tasker](https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm&hl=en) scripts.

Oh, and I made the cranes. :)

Aside from being actually useful, I wanted to get some exposure to circuit design and debugging, as well as
embedded programming, two areas with which I had had only theoretical knowledge and limited hands-on experience. This
project fulfilled that purpose quite well.