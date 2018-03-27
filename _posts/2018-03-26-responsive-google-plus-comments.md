---
date: 2018-03-26 17:52:35 -0700
title: Make Google Comments Responsive
description: How to make Google Plus comment plugin responsive to different screen widths.
permalink: /responsive-google-comments-jekyll/
---
While ~~procrastinating for my assignments~~ doing my latest web site revamp, I decided to try out the Google+ comment plugin. It's super easy to set up, fits nicely with my web site's aesthetic, and doesn't require any contortions to work around static site generation. But when I checked my site out on my phone, this nonsense happened:

![Overly wide google comment box](/assets/images/2018/bad-google-comment-box.png){:width="50%"}

A quick google search didn't turn up anything, just this [StackOverflow post](https://stackoverflow.com/questions/34025980/how-to-fix-viewport-width-issue-when-using-google-comments-on-responsive-websit) from a few years ago, which still didn't have an answer.

Here's my solution.

For reference, this is (one of the ways) you can embed Google+ comments:

```html
<script src="https://apis.google.com/js/plusone.js"></script>
<div id="comments"></div>
<script>
  gapi.comments.render('comments', {
    href: window.location,
    width: '624',
    first_party_property: 'BLOGGER',
    view_type: 'FILTERED_POSTMOD'
  });
</script>
```
[snippet source](https://gist.github.com/chuckbutler/fce8077a0161cff6b489)

The width parameter is passed as an integer string. You can't specify something like, say, "100%." So I added a dummy container around it to use that as a reference when setting the size.

```html
<script src="https://apis.google.com/js/plusone.js"></script>
<div class="comments-container"> <!-- dummy container! -->
  <div id="comments"></div>
</div>
<script>
  $(document).ready(function() {
    var w = $('.comments-container').width();
    gapi.comments.render("comments", {
      href: window.location,
      width: w.toString(),  /* pass the dummy's width */
      first_party_property: 'BLOGGER',
      view_type: 'FILTERED_POSTMOD'
    });
  });
</script>
```

I'm already using [jQuery](https://jquery.com/), but it probably wouldn't be that hard to rejig this to do without.

There, no more stupidly wide comment box:

![Appropriately sized Google comment box](/assets/images/2018/good-google-comment-box.png){:width="50%"}
