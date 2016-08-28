---
layout: noheader
permalink: /verdi-gui/
title: Verdi Gui v1.1.1 Documentation
---



<ul class="table-of-contents">
  <li><a href="#I">I. Introduction</a>
    <ul class="table-of-contents">
      <li><a href="#I-i">i. Why Use Verdi GUI?</a></li>
      <li><a href="#I-ii">ii. Software Information</a></li>
      <li><a href="#I-iii">iii. Verdi GUI Demo Video</a></li>
    </ul>
  </li>
  <li><a href="#II">II. Description of UI Elements</a></li>
  <li><a href="#III">III. Commands</a></li>
  <li><a href="#IV">IV. Questions and Answers</a>
    <ul class="table-of-contents">
      <li><a href="#IV-i">i. Can I change the power by more than 10 mW?</a></li>
      <li><a href="#IV-ii">ii. Change I change the power by less than 10 mW?</a></li>
      <li><a href="#IV-iii">iii. Why am I unable to export?</a></li>
      <li><a href="#IV-iv">iv. The shutter is open and the laser is on, but light is not emitting.</a></li>
      <li><a href="#IV-v">v. The diode average current shows 0 A, but each diode has a small positive current.</a></li>
      <li><a href="#IV-vi">vi. There is a fault. What do I do?</a></li>
      <li><a href="#IV-vii">vii.  Where can I ask other questions?</a></li>
    </ul>
  </li>
</ul>

<a name="I"></a>
# I. Introduction

<a name="I-i"></a>
## i. Why Use Verdi GUI?

Verdi GUI is a small program that allows a Windows computer to interface with a Coherent Verdi laser via RS-232.

Verdi GUI is a faster and safer way to operate the laser as it almost entirely eliminates the need to physically interact with
the laser. Additionally, it automates the logging process and allows for real-time display of all of the laser's operating stats
on one screen, which enables better monitoring of the laser's health.

<a name="I-ii"></a>
## ii. Software Information

The latest stable version of Verdi GUI is version 1.1.1.

Verdi GUI is is licensed under the MIT License; the source code for Verdi GUI can be found on GitHub.

A copy of the Windows installer for Verdi GUI can be found on the lab PC in Equipment/Optics and Lasers/Lasers/Verdi.

Verdi GUI has been tested on Windows 7 through 10. Verdi GUI will probably also work on older versions of Windows, but has not
been tested on them.

<a name="I-iii"></a>
## iii. Demo Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/ZaWmGg7Yhww" frameborder="0" allowfullscreen></iframe>

<a name="II"></a>
# II. Description of UI Elements

The Verdi GUI UI appears as follows:

![Screenshot of Verdi Gui](/images/2016/verdi-gui-screenshot.png)

<table>
  <tr>
    <th>&nbsp;</th>
    <th>UI Element</th>
    <th>Description</th>
  </tr>
  
  <tr>
    <td>1</td>
    <td>Shutter Indicator/Toggle</td>
    <td>Shows the laser's shutter's status. Clicking the button toggles the laser shutter. In the displayed image, the shutter is
    open, and clicking the button would close the shutter.</td>
  </tr>
  
  <tr>
    <td>2</td>
    <td>Power Setting Display</td>
    <td>Displays the laser's set power in watts (actual power output is usually within 1% of set power).</td>
  </tr>
  
  <tr>
    <td>3, 4</td>
    <td>Increase/Decrease Power</td>
    <td>Increase or decrease the laser's set power by 0.01 watts.</td>
  </tr>

  <tr>
    <td>5</td>
    <td>Export Button</td>
    <td>When clicked, Verdi GUI will ask for the logger's name, then save this information, along with the current date and
    time, the laser's power setting, currents, and temperatures, as well as number of operating hours, to a .csv (Excel) log file.
    The log file can be found in Verdi GUI's installation folder.</td>
  </tr>
  
  <tr>
    <td>6</td>
    <td>Open Log Button</td>
    <td>Opens the log file.</td>
  </tr>
  
  <tr>
    <td>7</td>
    <td>Commands Button</td>
    <td>Opens a list of all usable commands.</td>
  </tr>
  
  <tr>
    <td>8</td>
    <td>Input Box</td>
    <td>Commands can be typed here. Pressing enter will send the command.</td>
  </tr>
  
  <tr>
    <td>9</td>
    <td>Output Box</td>
    <td>Messages from Verdi GUI to the user are displayed here.</td>
  </tr>
  
  <tr>
    <td>10</td>
    <td>Temperatures</td>
    <td>Temperatures of various laser parts are displayed here in degrees Celsius.</td>
  </tr>
  
  <tr>
    <td>11</td>
    <td>Currents</td>
    <td>The current of each diode, as well as their average current, are displayed here, in amps.</td>
  </tr>

</table>


<a name="III"></a>
# III. Commands

Verdi GUI accepts the following commands:

<table>

  <tr>
    <th>Command</th>
    <th>Action</th>
  </tr>
  
  <tr>
    <td>-help, help</td>
    <td>Print a helpful message.</td>
  </tr>
  
  <tr>
    <td>-baud n</td>
    <td>Changes the computer's serial communication baudrate to n. Does NOT change the laser's serial communication baudrate.</td>
  </tr>
  
  <tr>
    <td>-port</td>
    <td>Prints the port currently being used for serial communication.</td>
  </tr>
  
  <tr>
    <td>-port n</td>
    <td>Switch to using COM port n for serial communication.</td>
  </tr>
  
  <tr>
    <td>-scan</td>
    <td>Perform a full sweep of all serial ports to try to find a connected laser.</td>
  </tr>
  
  <tr>
    <td>-update</td>
    <td>Do a full update of all the laser's stats.</td>
  </tr>
  
  <tr>
    <td>-update n</td>
    <td>Tell Verdi GUI to automatically refresh the laser's stats every n seconds.</td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td>All other commands are sent directly as serial commands to the laser.</td>
  </tr>
  
</table>

A full list of valid serial commands can be found in the Operator's Manual for the laser.

<a name="IV"></a>
# IV. Questions and Answers

<a name="IV-i"></a>
## i. Can I change the power by more than 10 mW?

It is not recommended to change the power setting by more than 10 mW at a time, as that may cause damage to the Verdi. However, if you are certain that you know what you are doing, then the power can be set by sending a serial command to the laser, "POWER = n.nn", where n.nn is the new power setting in watts.

<a name="IV-ii"></a>
## ii. Can I change the power by less than 10 mW?

This cannot be accomplished by Verdi GUI alone. However, an external system is currently under development that will allow sub-milliwatt adjustments. Ask Lise, Mokter or Alireza for more information.

<a name="IV-iii"></a>
## iii. Why am I unable to export?

Double check that the log file is not currently open. Verdi GUI cannot write to a file that is in use.

If the file is closed and Verdi GUI still cannot export, make sure that you have permission to write in the folder that Verdi GUI is installed -- "C:/Verdi GUI/" by default.

<a name="IV-iv"></a>
## iv. The shutter is open and the laser is on, but light is not emitting.

Did you turn the keyswitch to the "ON" position? Verdi GUI cannot operate the keyswitch -- it must be operated manually by the user.

<a name="IV-v"></a>
## v. The diode average current shows 0 A, but each diode has a small positive current.

This is a known issue with the Verdi laser. After the laser is put into standby, it stops checking the individual diode currents and instead will keep showing the last known diode current until the laser is turned back on.

<a name="IV-vi"></a>
## vi. There is a fault. What do I do?

Follow the instructions in the Operator's Manual to rectify the fault, then click "Okay" to tell Verdi GUI that the fault has been cleared. Verdi GUI cannot clear faults on its own, since clearing faults usually requires physically manipulating parts of the laser.

<a name="IV-vii"></a>
## vii. Where can I ask other questions?

You can ask Lise in person or by email.