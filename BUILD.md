# rtw88

A repository fork for the newest Realtek rtlwifi codebase. This should build on
any version at and above 4.19 of the kernel for as long as the distribution has
not modified *any* of the kernel APIs.

## usage

Upon any kernel update that involves kernel API modifications, you must rebuild
this project.

```shell
git clone https://github.com/syn-net/rtw88.git rtw88.git
./configure.sh
make
sudo make install
```
