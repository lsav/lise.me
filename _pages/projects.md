---
layout: page
permalink: /projects/
title: Projects
---

This page is to keep track of cool things I do or make.

## Cool things

1. **Laser control program: [demo video](https://youtu.be/ZaWmGg7Yhww)**\\
\\
This project was created 2016 summer as part of my work with the [UBC Nanostructures Lab](http://nanostructure.ece.ubc.ca/).
A program to control the laser was required to improve working safety conditions and automate the rather boring task of manually
checking the laser's temperature, current, and hours of operation for each diode, heatsink, and element, which had to be done
every time the laser was used. \\
\\
I decided to write the program in Python using pre-existing libraries for serial communication and GUI creation. It was a new
and interesting experience to write a program for use by people other than myself, and I found myself, for a change, spending the
vast majority of my development time thinking of ways that other people might break my program and going about preventing that.
Of course, in spite of all this, at my first demo of the program, in which I invited lab members to test it, people still managed
to produce a small bug.
2. **Jekyll web site: you're on it!**\\
\\
Compared to the laser project, this was easy! No feature requests from other people, no lab members, and Jekyll made building pages
a cake walk. I tinkered around on my own with CSS/HTML5/JavaScript to make the website responsive, and took the opportunity to
learn some Ruby so I could make a rakefile to make page generation even easier.\\
\\
Also, I learned from the last experience, where I had, by the end, something like 20 different folders with dates/version numbers
before I finally decided to check out this "Git" thing that I had heard so much about. My Jekyll site was made using Git from the
beginning, and I used [Cloud9](http://c9.io/)'s Ubuntu-based cloud environment to develop.
3. **Smart Wake-up Light Headboard: [link to more detailed write-up](/wakeup/)**\\
\\
This project was conceived because of how painful it was, last summer, to force myself to wake up at 5:30 AM, 4 times a week, so I
could make it to the gym at open. I wanted a wake-up light to create a sunrise emulation for a gentler wake-up. \\
\\
The project ended up turning a bit more complicated than originally intended, as I later decided that I wanted to use RGBs for a
more realistic sunrise experience (also because... colours). I got to learn about the, erm, joys, of working with hardware
and how many interesting effects can be produced when your code doesn't work. \\
\\
The other really interesting thing about this project is translating between human light perception and computer light colour
outputs. Biology is weird!