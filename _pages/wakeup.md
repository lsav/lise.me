---
layout: page
permalink: /wakeup/
title: Smart Wake-up Headboard Light
---

I first got the idea to make a headboard that would have an integrated, smart wake-up light
[in July](http://lisesavard.com/posts/wakeup-light-1/). Aside from being actually useful, I wanted to a little bit of exposure to
circuit design and debugging, as well as embedded programming, two areas with which I have had very little experience.

![Original headboard design sketch](http://lisesavard.com/assets/images/2016/headboard-sketch.jpg)

The original design was very simple and I got an [initial prototype](http://lisesavard.com/posts/wakeup-light-2/) working fairly
quickly. But then the design... grew a little. Here is a more recent design sketch:

![Most recent design block diagram](/assets/images/2016/headboard-uno-block.jpg)

So I have decided to collect all of the updates and document the project progress here in full.

The current status, as of September 6, 2016, is:

- Completed building of headboard (physical parts). Headboard is now constructed out of brushed stainless steel on
1x4 lumber, mounted to drywall with keyhold mounts.
- Completed circuit, which consists of an [Arduino Uno](https://www.arduino.cc/en/Main/ArduinoBoardUno) connected to an
[HC-05 Bluetooth module](http://www.canadarobotix.com/bluetooth/1258-hc-05-wireless-bluetooth-module) and an
[Adafruit PWM chip](https://www.adafruit.com/product/1455) to drive the three gate mosfets that control each colour channel.
- Programming the Arduino to drive the LEDs in a way that looks nice. I have to admit that I underestimated this task to a
shameful degree -- it turns out that programming _colour_ changes is not as simple as just fading each colour channel, because
human eye biology is complicated. Who'd've thought! Anyway, the [Git repo](https://github.com/lsav/led-headboard) contains all of
the up-to-date progress on this part.
- Integration into Android automated morning wake-up sequence -- this part is done. The phone automatically fetches weather data
every morning, as well as a Bluetooth wake-up command that currently triggers an exceptionally ugly sunrise.