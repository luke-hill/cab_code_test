# cab_code_test
Citizens Advice Bureau - Code test

## Timeline

- Repo init - **18:15 CET** (Issues with RSA on Virtualbox)
- All other commits are roughly timestamped correctly (Vbox timer synched up)

### Instructions

As per `.travis.yml` the CI pipeline has been enabled for the repo and you can see the
red/green passes for each run. All publically visible.

**NB:** There is a cap made on `capybara` due to an undisagnosed issue in the 3.30 branch
(I am working with Thomas Walpole on solving this issue but for now it can be mititgated
by using 3.29 or below, which is still reasonably up to date).

Running locally can be done through the usage of the rake tasks. Ideally you would just run
`bundle exec rake all` to run all the separate features

In each cucumber feature a variety of comments have been added to explain next steps and
potential refactoring / additional scenarios I would add (If time permitted)

(c) Luke Hill - April 2020 - All Rights Reserved.
Code License available [HERE](https://www.github.com/luke-hill/cab_code_test/blob/master/LICENSE).
