---
title: About me
displaytitle: Who is Lise?
permalink: /about/
---
<script>
  function printEmail() {
    /* definitely impossible-to-crack email obfustimacator */
    var chars = ",.abcdefghijklmnopqrstuvwxyz!@#$%^&*()";
    var order = [13, 10, 20, 6, 29, 13, 10, 20, 6, 1, 14, 6];
    var addr = "";
    for ( var i = 0 ; i < order.length ; i++ ) {
      addr += chars[order[i]];
    }
    document.write("<a href='mailto:"+addr+"'>"+addr+"</a>");  
  }
</script>

![Photograph of Lise](/assets/lise-savard-portrait.png)

I'm a Computer Engineering student at the University of British Columbia with a particular interest in robust, performant, large scale systems. Currently I'm wrapping up my third year of undergraduate studies while working with UBC's Networking, Systems and Security lab on high performance inference with distributed TensorFlow deployments.

In my spare time, you're likely to find me taking long walks around beautiful Vancouver with my X-T20, applying maths to things that are probably [not entirely appropriate](/cost-children-motherhood/) to apply math to, or [picking up](https://youtu.be/jkYpXnZ2uf8) [heavy things](https://youtu.be/iIvTeIvaghg).
  
Get in touch with me! You can connect with me on [LinkedIn](https://www.linkedin.com/in/lsava) or write to me at
<script>printEmail();</script>.