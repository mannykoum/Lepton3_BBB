# Lepton3_Raspi
A grabber for the RaspberryPi 3 to acquire thermal images from Lepton3 sensor. 
This repo is a fork of [Myzhar/Lepton3_BBB](https://github.com/Myzhar/Lepton3_BBB).
Thanks Walter.

## Change SPI Buffer size of the RaspberryPi
SPI buffer size must be set to ~~131072~~ 20480 bytes (safe value) to allow the receiving of a full segment for RGB data

(61 packets x 240 bytes = 14640 bytes)

```
$ sudo nano /boot/cmdline.txt
```
add ``` spidev.bufsiz=20480 ```

Save, exit and reboot

## Run the build script

From the top-level directory, run
```
./build.sh
```

## or compile the code yourself
```
$ mkdir build
$ cd build
$ cmake ..
$ make
```





