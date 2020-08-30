fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
## iOS
### ios build
```
fastlane ios build
```
Builds the app
### ios tests
```
fastlane ios tests
```
Runs all unit tests on the app
### ios testflight_increment_build_number
```
fastlane ios testflight_increment_build_number
```
Increment the build nubmer to the latest in testflight + 1
### ios archive
```
fastlane ios archive
```
Build and archive
### ios testflight_upload
```
fastlane ios testflight_upload
```
Upload to apple

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
