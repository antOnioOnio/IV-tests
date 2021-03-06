[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Description
This repository is used to build a docker image which can then be used
to run the Perl tests in the [IV-20-21](https://github.com/JJ/IV-20-21) repository against any other
repository and branch.

This can be handy as it allows any student to test their repositories
changes before opening a Pull Request.

## Example
The following docker command ilustrates how to run the test against my personal repository:

``` shell
sudo docker run -e STUDENT_REPO=https://github.com/antOnioOnio/IV-20-21 antOnioOnio/IV-tests
```