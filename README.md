# NixOS sudo problem minimal example

To run with nix 2.4 (tested on Ubuntu 21.10):
```
nix build .#vm
cd result
sudo bin/run-nixos-vm
```
then connect to the VM with the username `nx` and password `nx`, and try to run the command
```
sudo -l
```
You should get the error.

To quit the VM, press `CTRL+A X`
