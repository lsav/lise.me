---
title: Resume
displaytitle: Lise Savard
permalink: /resume/
---

<script>
function obfustimacateEmail() {
    var chars = ",.abcdefghijklmnopqrstuvwxyz!@#$%^&*()";
    var order = [13, 10, 20, 6, 29, 13, 10, 20, 6, 1, 14, 6];
    var addr = "";
    for ( var i = 0 ; i < order.length ; i++ ) {
    addr += chars[order[i]];
    }
    document.write("<a href='mailto:"+addr+"'>"+addr+"</a>");  
}
</script>

<div class="center-text"><script>obfustimacateEmail();</script></div>

# Education

#### 2016 - 2020, B.A.Sc Computer Engineering, University of British Columbia (94% GPA)
- 2019 Rockwell Scholarship for Electrical and Computer Engineering
- 2017, 2018, 2019 Trek Excellence Scholarship (top 5%)
- 2018 UBC ECE Department Scholarship
- 2017 Engineering Physics Anniversary Scholarship (1 out of 240 candidates)
- Undergraduate Teaching Assistant for CS320: Intermediate Algorithms

# Experience

#### Fall 2019, Software Engineer Intern, Facebook
- Created a system to allow revoking of "verified" status from businesses on Facebook's platforms to help combat fraudulent accounts
- Worked cross-functionally with designers, content creators, and internal customers to get a full end-to-end user experience launch-ready three weeks ahead of schedule

#### Summer 2019, Software Engineer Intern, Stripe
- Transitioned Stripe's PCI-compliant cardholder environment from push-based deployments over SSH to a highly-secure, push-based deployment system

#### Summer 2018, Software Development Engineer Co-op, A Thinking Ape Entertainment
- Client-side optimization and end-to-end feature development for multiplayer mobile game using Python and C#
- Reduced total memory usage by ~10% (20 MB) and initial asset load time by ~25% (15 seconds)
- Along with two engineers and one game designer, created a new realm-wide competition system

#### Spring 2017, Software Developer Co-op, Copperleaf Technologies
- Full stack development using using C# and AngularJS for asset analytics software
- Implemented single sign-on system to interoperate with Ping, Okta, Active Directory, and other identity providers
- Consistently resolved tickets and delivered features ahead of schedule

#### Summer 2016, Undergraduate Research Assistant, UBC Nanostructures Lab
- Wrote a [Python program](https://youtu.be/ZaWmGg7Yhww) to control and automate a laser during experiments on carbon nanotubes
- It's been 4 years and they're still giving the little ol' installer out to all the new lab members; isn't that wild?

# Projects

* **MagnetoDB**: A horizontally scalable, fault-tolerant, key-value store developed in Java and modelled on Amazon's DynamoDB

* **Kerbodyne Analytic Orbit System (KAOS)**: a [mission planning system](https://github.com/KMC-70/KAOS) for imaging satellites using Python, Flask, and PostgreSQL, using a novel analytic algorithm to calculate satellite visibility 75% faster than current industry standard brute force algorithms

* **Optimal Node Placement for TensorFlow Inference**: part-time research project with UBC Distributed Systems lab to improve inference throughput by splitting trained TensorFlow models across multiple devices (sadly, we did not succeed in besting [Google's solution](https://www.tensorflow.org/serving))

* **The Magic School Bot!**: a multi-tasking, beacon-sensing, line-following, zipline-riding [secret agent robot](https://youtu.be/PCNbXAErK9I) built in five wild, wild weeks. Won 3rd place at the annual EngPhys Robot Contest

* **Sunrise Lamp**: a smart Arduino-powered [lighting system](https://youtu.be/MBOkNSHl62o) to make waking up at 5AM in a Canadian winter slightly more tolerable
