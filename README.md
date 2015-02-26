# Push to gh-pages

If you want to push a static web site to the `gh-pages` branch on github
and you want to automate it, then this tool might be something you are looking for.

This tool takes a configured directory and updates a cloned github repo's gh-pages branch
with it and pushes the changes back with a commit message such as 
`Travis deployed "master" - Wed Feb 25 13:06:00 UTC 2015`.

# Motivation?

I had a couple of sites [1], [2] and [3] that were served by [github-pages][4]
which means they were static pages and the files that are finally served 
are pushed into the branch `gh-pages` and github automatically takes care of 
publishing them on the default or a custom URL. A pretty cool github feature!  
The default way to do that for generated content, sites that are generated from 
templates or alike is normally [jekyll][5]. Jekyll is Ruby tool which does it's
job very nicely and is very wide-spread. I tried it a couple of times and didn't
really fall in love. But due to my django background I always fell for [swig][6]
and since I used that for [1] and was pretty happy with it I only missed the last
step: building and pushing the resulting static files into the branch `gh-pages`.
For quite a while I did that always locally, which resulted in commits with the
message `Built`. Useless and actually not contributing to the actual underlying 
reason why the code is there, but a by-product of deployment.  
That was the reason to build this project, just let travis do the pushing to `gh-pages`.

# Install

- `npm install`
- ???

[1]: http://jscoderetreat
[2]: http://wolfram.kriesing.de
[3]: http://tddbin.com
[4]: https://pages.github.com
[5]: http://jekyllrb.com
[6]: https://paularmstrong.github.io/swig/