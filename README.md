# what is it for?
it will download the most current openshift origin 'oc' release and make a debian package out of it. You can also pass the environment variable VERSION with a specific version (for example v1.5.1). It will then build this version.

# usage
1. clone the repo
1. cd into the cloned directory
1. if you do not want the latest version to be build, set the environment variable VERSION in the debian/rules file to version you want
1. modify the debian/changelog entry to match the your 'oc' release version number
1. run `git-buildpackage --git-ignore-new -us -uc`
