# cab_code_test
Citizens Advice Bureau - Code test
[![Build Status](https://travis-ci.com/luke-hill/cab_code_test.svg?token=kSzQqszFjGyM7ckZ4kqs&branch=master)](https://travis-ci.com/luke-hill/cab_code_test)

## Timeline

- Repo init - **18:15 CET** (Issues with RSA on Virtualbox)
- All other commits are roughly timestamped correctly (Vbox timer synched up)

### Setup

This repo was tested locally with ruby 2.7.1 but on travis I used the latest patches of
`2.4` <-> `2.7`
```bash
$ rvm install 2.7.1
$ git clone https://github.com/luke-hill/cab_code_test.git
# OR IF SSH KEY SETUP
$ git clone git@github.com:luke-hill/cab_code_test.git
$ cd cab_code_test
$ cp .env.example .env
# Amend variables if appropriate (BROWSER only)
$ bundle
```

### Instructions

Running locally can be done through the usage of the rake tasks. Ideally you would just run
`bundle exec rake cukes:all` to run all the separate features. This will ignore failing tests
which each have a code note next to them explaining the issue I would remedy

```bash
$ bundle exec rake --tasks
# Then an example rake could be
$ bundle exec rake cukes:all
```

**NB:** There is a cap made on `capybara` due to an undisagnosed issue in the 3.30 branch
(I am working with Thomas Walpole on solving this issue but for now it can be mititgated
by using 3.29 or below, which is still reasonably up to date).

In each cucumber feature a variety of comments have been added to explain next steps and
potential refactoring / additional scenarios I would add (If time permitted)

(c) Luke Hill - April 2020 - All Rights Reserved.
Code License available [HERE](https://www.github.com/luke-hill/cab_code_test/blob/master/LICENSE).
