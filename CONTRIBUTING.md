# Introduction

### "The human spine is a masterpiece of engineering and a miracle of flexibility..." - Joseph Pilates

>...And a healthy and stong spine has many vertebrae. We often think of this project as a spine that helps server security stand strong and upright, and each contributor as the vertabrae which allow for the movement and flexibility of the spine. The vertebrae play an important role in protecting the spinal cord from damage and maintaining its proper alignment. Which is why people like you are essential in making this project such a great tool!

### Why are these guidelines important?

>Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open source project. In return, they should reciprocate that respect in addressing your issue, assessing changes, and helping you finalize your pull requests.

### What kinds of contributions are we looking for.

> Help with bash scripting to run audit scripts
> Setting up new repositories
> Setting up test environments
> Test automation
> Scripts to generate reports on audit scripts
> Maturing our git repo setups (i.e. setting up good PR rules, and DevOps)
> Spreading the word!
> Even if you don't wish to code directly, there are a lot of issues that need to be transfered out of paper copies of Hardening benchmarks into the issues section.

### What contributions are we NOT looking for.
> Please, don't use the issue tracker for support questions. Instead please contact the maintainers for support or ask to join our discord server.

# Ground Rules
### Set expectations for behavior (yours, and theirs).
> Responsibilities
> * Ensure compatibility for every change that's accepted. Ubuntu Linux 22.04.
> * Ensure that code that get reviewed using these guidelines: https://google.github.io/styleguide/shellguide.html (best efforts) 
> * Create issues for any major changes and enhancements that you wish to make. Discuss things transparently and get community feedback.
> * Try to keep script files modular and follow the set file heirarchy (unless there is good reason otherwise).
> * New code should come with tests and those tests should pass before code is merged in. Please be sure to run adequate test against scripts on the compatable test environment. Ubuntu Linux 22.04.
> * Keep Pull requests as small as possible, preferably one new feature per pull request.
> * Be welcoming to newcomers and encourage new contributors. See the [Python Community Code of Conduct](https://www.python.org/psf/codeofconduct/)
> * Have fun! Get excited! And enjoy the cyberpunk themed experience!


# Your First Contribution
> Unsure where to begin contributing to Atom? You can start by looking through these beginner and help-wanted issues:
> Beginner issues - issues which should only require a few lines of code, and a test or two.
> Help wanted issues - issues which should be a bit more involved than beginner issues.
> Both issue lists are sorted by total number of comments. While not perfect, number of comments is a reasonable proxy for impact a given change will have.
> New Issues will generally be tagged as level 1 or level 2. This is related to the hardness profile an issue is related to. Usually level 1 is easier, usually.

### Never never contributed to open source before? We got you Choom!

> Working on your first Pull Request? You can learn how from this *free* series, [How to Contribute to an Open Source Project on GitHub](https://egghead.io/series/how-to-contribute-to-an-open-source-project-on-github).
>At this point, you're ready to make your changes! Feel free to ask for help; everyone is a beginner at first :smile_cat:
>
>If a maintainer asks you to "rebase" your PR, they're saying that a lot of code has changed, and that you need to update your branch so it's easier to merge.

# Getting started
### A quick walkthrough of how to submit a contribution:
>For all material changes:

>1. Create an issue for the change, adequately summarizing in the details of the issue
>2. Create your own branch based off of the issue created
>3. Do the changes in your branch. Write adequate tests around new code. 
>   Ensure tests run successfully, running other tests contingent on new code or related to new code written (no regressions)
>4. If you like the change and think the project could use it:
    * Be sure you have followed the code style for the project.
    * Create a pull request.


### The process for small or "obvious" fixes:
>As a rule of thumb, changes are obvious fixes if they do not introduce any new functionality or creative thinking. As long as the change does not affect functionality, some likely examples include the following:
>* Spelling / grammar fixes
>* Typo correction, white space and formatting changes
>* Comment clean up
>* Bug fixes that change default return values or error codes stored in constants
>* Adding logging messages or debugging output
>* Changes to ‘metadata’ files like .gitignore, build scripts, etc.
>* Moving source files from one directory or package to another
>
>Simply create a branch and make your changes in your branch
>When you are ready with your changes create a Pull Request


# How to report a bug
### security disclosures!
> If you find a security vulnerability, do NOT open an issue. Email shane.fast01@gmail.com instead.
> In order to determine whether you are dealing with a security issue, ask yourself these two questions:
> * Can I access something that's not mine, or something I shouldn't have access to?
> * Can I disable something for other people?
>
> If the answer to either of those two questions are "yes", then you're probably dealing with a security issue. Note that even if you answer "no" to both questions, you may still be dealing with a security issue, so if you're unsure, just email us at shane.fast01@gmail.com.


### How to file a bug report.
> When filing an issue, make sure to answer these five questions:
>
> 1. What version are you using of Ubuntu?
> 2. What processor architecture are you using?
> 3. What did you do?
> 4. What did you expect to see?
> 5. What did you see instead?
> General questions should go to the Sandevistan discord server instead of the issue tracker. The cyberpunks there will answer or ask you to file an issue if you've tripped over a bug (or gone [cyberpsycho](https://cyberpunk.fandom.com/wiki/Cyberpsychosis)).


# How to suggest a feature or enhancement
### roadmap, goals, or philosophy for development.
> Project Sandevistan is an open source project intended to bridge the gap between buying tools or renting hardened images and struggling through publicly available hardening benchmarks. While world class information exists to configure servers the methods of auditing servers is minimal without shelling out considerable payment. To improve accessibility to better server security, we aim to provide easy to use tools that are free and educate our users in the process of server hardening. We hope to strengthen the backbone of the internet!
>
> While we hope to tackle all major benchmarks and hardening guidlines, we have set a list of priorities which is available on our trello board. Please contact the maintainers for more info or to request access.

### The process for suggesting a feature.
> If you find yourself wishing for a feature that doesn't exist in this Sandevistan repository, you are probably not alone. There are bound to be others out there with similar needs. Many of the features that Sandevistan has today have been added because our users saw the need. Firstly have a look at the other Sandevistan repositories to see if a similar issue exists. If not, please open an issue on our issues list on GitHub which describes the feature you would like to see, why you need it, and how it should work.


# Code review process
### Explain how a contribution gets accepted after it’s been submitted.
> The core team looks at Pull Requests on a regular basis.
> After feedback has been given we expect responses within two weeks. After two weeks we may close the pull request if it isn't showing any activity.


# Community
> You can reach out to our core team and request to join our Discord channel!
