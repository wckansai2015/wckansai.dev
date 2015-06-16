# VCCW for WordCamp Kansai 2015 hands-on

## How to use

1. Get the box for [wckansai](https://www.dropbox.com/s/br056hbdx9sisaj/package.box).
1. `vagrant box add wckansai path/to/wckansai.box`
1. Add `192.168.88.88 wpkansai.dev` to your hosts file.
1. `vagrant up`
1. Finally, visit `http://wckansai.dev/`.
1. That's it!!

## How to uninstall

1. `vagrant destroy`
1. Remove the line `192.168.88.88 wpkansai.dev` from hosts file.
1. `vagrant box remove wckansai`
1. Remove this directory.


See also [https://github.com/wckansai2015/wckansai-box](https://github.com/wckansai2015/wckansai-box).
