*Work in progress*
# C++ projects automation shell scripts

## Description
While working on 42 C++ modules you have to create a lot of files, with similar content, like:
- Makefiles with slightly different source files and executable name, but same flags and rules
- Files containing classes, that are with similar/same structure

So this repository contains bash shell scripts, that automate the creation of such files to save our precious time!

## Instructions
First clone this repo:
```
git clone git@github.com:VestaManuyko/CPP_automation_scripts.git scripts_cpp
cd scripts_cpp
```
then if you want to:
- Generate a makefile, run:
```
chmod +x cppmake.sh
./cppmake.sh <expected executable name> <the source file names separated with spaces>
```
The example for cpp00 ex00 the Makefile generation could be launched like this:
```
./cppmake.sh megaphone megaphone.cpp
```
