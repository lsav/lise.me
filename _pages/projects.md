---
permalink: /projects/
title: Projects
---

This page is to keep track of cool things I do or make.

<ul class="table-of-contents">
  <li><a href="#wakeup">I. Wake-up light</a></li>
  <li><a href="#verdigui">II. Laser control program</a></li>
</ul>

<a name="wakeup"></a>
## I. Wake-up Light Headboard

This was a project to make a headboard that would look pretty and be useful. It has a built-in wake-up light that
accepts Bluetooth commands from an Android phone so that, as part of a more comprehensive morning wake-up routine,
my phone can send a command that triggers a sunrise emulation from my headboard. In theory, this is supposed to make
waking up before dawn nicer and easier.

Demo video:

<div class="video"><iframe src="https://www.youtube.com/embed/MBOkNSHl62o" frameborder="0" allowfullscreen></iframe></div>

This project was a collaboration between myself and my partner. He designed the hardware for the
[first version](/assets/images/2016/headboard-circuit.jpg), which I later upgraded to
include better PWM control and more LED colours. I also did the hardware design and prototyping for version 2.

![Block diagram of project](/assets/images/2016/headboard-uno-block.jpg)
<span class="caption">Block diagram of version 2</span>

The final circuit consisted of an Arduino, connected to an HC-05 module to receive Bluetooth commands. The Arduino, in
turn, drives a PWM chip to control the LED lights via three MOSFETs.

![Photo of circuitry](/assets/images/2016/headboard-rev2-circuit.jpg)
<span class="caption">Photograph of circuitry</span>

The Arduino programming was a full-on collaboration.
The code repo is viewable [on GitHub](https://github.com/lsav/led-headboard).

Oh, and I made the cranes. :)

<a name="verdigui"></a>
## II. Laser control program

This project was created 2016 summer as part of my work with the [UBC Nanostructures Lab](http://nanostructure.ece.ubc.ca/).
A program to control the laser was required to improve working safety conditions and automate the rather boring task of manually
checking the laser's temperature, current, and hours of operation for each diode, heatsink, and element, which had to be done
every time the laser was used. 

Demo video:

<div class="video"><iframe src="https://www.youtube.com/embed/ZaWmGg7Yhww" frameborder="0" allowfullscreen></iframe></div>

I decided to write the program in Python using pre-existing libraries for serial communication and GUI creation.
The code for Verdi GUI is viewable [here](https://github.com/lsav/verdi-gui).

The final product is currently in active use at the Nanostructures Lab, where is it helping my former colleagues
on their quest to create a more efficient solar energy converter (and do some other cool science along the way)!