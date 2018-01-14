---
date: 2018-01-14 12:38:19 -0700
layout: post
title: Optimization gone wrong
description: "This is a story about a question I was asked during an interview recently."
math: true
---
This is a story about a question I was asked during an interview recently.
The question was:

> Write a function in Python that, given two unsorted lists, returns a sorted 
> list that is the merger of those two lists.

Further clarifications:

* It is permitted to use Python's built-in sort function; ascending order okay
* No assumptions can be made about the input other than they can be ordered
* No need to worry about checking for invalid inputs

My immediate instinct was to concatenate the lists and use ```sort()``` on
them. I wrote this solution on the whiteboard with great trepidation -- when
something is this easy, there must be a catch.

```python
def merge1(A, B):
	return sorted(A + B)
```

Sure enough, I was told that this was too slow and I must make it run faster. I
didn't think this was possible and said as much. If you're reading this and
want to play along, please feel free to take 5 minutes to try and figure out a
solution. But don't push yourself if you are still stuck after 5 minutes.

.

.

.

.

.

After some very strong hints, I arrived at the following version:

```python
def merge2(A, B):
	# sort A and B individually
	A.sort()
	B.sort()

	# add all elements, in order, to a new list
	C = []
	a = b = 0
	while a < len(A) and b < len(B):
		if A[a] < B[b]:
			C.append(A[a])
			a += 1
		else:
			C.append(B[b])
			b += 1

	# add any elements that remain in either A or B
	if a == len(A):
		C.extend(B[b:])
	elif b == len(B):
		C.extend(A[a:])
	
	return C
```

This solution was accepted as the fastest solution. We exchanged closing
questions. I got a tour of the office. Everyone was happy.

---

Except that, as soon as the adrenaline of the interview
environment wore off, my initial doubts about the impossibility of finding a
better solution than ```merge1``` came back. The two merges gnawed at my brain
the whole way home.

Asymptotically, assuming the inputs A and B
have sizes $$n$$ and $$m$$ respectively, ```merge1``` requires 
$$O(n + m)$$ to concatenate the lists and and $$O((n + m) \lg (n + m))$$ to
sort them -- so, $$O((n + m) \lg (n + m))$$ overall.

On the other hand, ```merge2``` sorts the lists first -- 
$$O(n \lg n + m \lg m)$$ -- and then adds them in order to a new list.
It is simply the "merge" part of mergesort.

Which one is faster? Consider two limiting cases:

1. One input is empty. Without loss of generality, let $$m = 0$$. Then the
time complexity of both merges is $$O( n \lg n)$$.
2. The two inputs are equal, so $$m = n$$. Then ```merge2```'s time complexity
becomes $$O(2n \lg n)$$, while ```merge1```'s time complexity becomes
$$O(2n \lg (2n))$$. But recall that $$\lg (2n) = \lg 2 + \lg n$$, and
$$\lg 2 = 1$$, so $$2n \lg (2n) = 2n + 2n \lg n$$.

Intuitively, this makes sense. Assume we choose mergesort as our $$n \lg n$$
sorting algorithm (Python sort is basically a fancy mergesort), ```merge1``` joins the lists first, but the joined list is <strong>re</strong>split as soon 
as sorting begins. So, the only difference between ```merge1``` and ```merge2```
is a single extra split. Hence, the additional $$O(n)$$ term, which should fall 
out for large inputs where it will be completely dwarfed by the $$O(n \lg n)$$
sorting.

Conclusion: both ```merge```s are asymptotically identical.

But what about sparing that extra split? Surely this is still a sensible
thing to do? After all, a _tiny_ bit better is still better.

But, from having worked with Python a bit (and the role I was interviewing for
uses Python extensively, so the language choice is relevant), I knew that its 
standard libraries are written in C. This means that standard library
functions like sort and concat are very, very fast. On the other hand, every 
_line_ of code that needs to go through Python's interpreter is horribly
slow. So, even though ```merge1``` technically performs extraneous operations, 
I was not convinced that sparing that extra merge by adding over a dozen 
lines of code would actually be faster.

---

To put my doubts to rest, I decided to actually test these functions. Here are the results. ```merge1``` uses Python's built in list concatenation. 
```merge2``` sorts each list first and then performs the merge manually.
I ran the two merges for inputs of up to 1 million elements, incrementing
the input size in steps of 5000. Lists consisted of randomly ordered integers.
Each data point represents the average of 10 runs.

![Plot of results.](/assets/images/2018/pymergetests-plot.png)
<span class="caption">Results of running ```merge1``` and ```merge2``` on various input sizes. Top graph: input A and B are the same size, ranging from 0
to 1 million elements. Middle graph: input A is twice the size of input B. Bottom
graph: input A ranges from 0 to 1 million elements, and input B is always 0. </span>

As shown, ```merge1``` is faster on all input types. They appear to be asymptotically the same, as expected (but plotting on a semilog scale would
have been better).

At this point, I feel like a Donald Knuth quote is inevitable:

![Donald Knuth: Premature optimization is the root of all evil](http://www.azquotes.com/picture-quotes/quote-premature-optimization-is-the-root-of-all-evil-donald-knuth-72-10-20.jpg)

---

I'm sure you're just waiting with bated breath to hear what happened with
the job that I was interviewing for.

This question formed a large chunk of the technical portion of the interview.
Aside from this question, the interview was quite enjoyable -- it was one of
those interviews where I felt like I had natural-feeling conversations with
my interviewers.

In a perfect world, I would have talked about all of this with my interviewers.
Perhaps they had a better reason for preferring ```merge2``` over ```merge1```
that they were not able to fully express. Perhaps, even though the interview
was conducted in Python and the position dealt with Python, the _intention_
was to test my reasoning about optimizing for a hypothetical ideal program,
(I mean, I'm an Engineering **Physics** major -- I am no stranger to
abstract thought experiments), in which case, yes, sparing the extra $$O(n)$$
operation would definitely be slightly better.

But this is not a perfect world, and in this real world I had another offer
deadline fast approaching, from an interview that I _also_ enjoyed.
Besides, I would be far too cautious to
actually send all of this, in an email, after the fact. So I rejected this
job offer and accepted the other.

---

On the off chance that one of my interviewers is reading this, I would be
really happy to discuss this post and get a better understanding of your
reasoning for preferring ```merge2``` over ```merge1```.
You can email me at the address listed on [the front page of my web site](http://www.lisesavard.com).