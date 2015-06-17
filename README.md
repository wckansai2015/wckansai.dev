# wckansai.dev

## How to use

1. Download box from [here](https://www.dropbox.com/s/3nten5btyvsip4j/wckansai.box?dl=0).
1. Run `vagrant box add wckansai path/to/wckansai.box`.
1. Add `192.168.88.88 wckansai.dev` to your hosts file.
1. Run `vagrant up`.
1. Visit `http://wckansai.dev/`.

## How to uninstall

1. Run `vagrant destroy`.
1. Remove the line `192.168.88.88 wpkansai.dev` from hosts file.
1. Run `vagrant box remove wckansai`.
1. Remove this directory.


See also [https://github.com/wckansai2015/wckansai-box](https://github.com/wckansai2015/wckansai-box).
