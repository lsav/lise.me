---
layout: index
---
<script>
function obfustimacateEmail() {
    var chars = ",.abcdefghijklmnopqrstuvwxyz!@#$%^&*()";
    var order = [13, 10, 20, 6, 29, 13, 10, 20, 6, 1, 14, 6];
    var addr = "";
    for (var i = 0; i < order.length; i++) {
        addr += chars[order[i]];
    }
    document.write("<a href='mailto:"+addr+"'>"+addr+"</a>");
}
</script>

Software engineer currently working in high frequency trading.

Toronto native recently transplanted to Chicago.

Want to get in touch? <script>obfustimacateEmail();</script>
