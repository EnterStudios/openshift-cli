# what is it for?
it will download the most current openshift origin 'oc' release and make a debian package out of it.

# usage
1. clone the repo
1. cd into the cloned directory
1. modify the debian/changelog entry to match the most current 'oc' release version number
1. run `git-buildpackage --git-ignore-new -us -uc`
