# ESP AT

The Winglet-ESP can run [ESP AT command firmware](https://docs.espressif.com/projects/esp-at/en/latest/esp32c3/index.html). 

The factory `v3.3.0.0` firmware is modified using the `at.py` file. This injects our pin mapping and wifi region settings into the firmware.

Run `build.sh` to generate `factory_winglet.bin`.

Program with `esptool --chip esp32c3 --port-filter vid=0x303a --port-filter pid=0x1001 write-flash --flash-mode dio --flash-freq 40m --flash-size 4MB 0x0 "factory_winglet.bin"`

> TODO: Add reset sequence via winglet command line

# esptool

esptool will be needed for programming. An up-to-date version can be installed via pip.

```
python -m venv .venv
python .venv/bin/pip install esptool
```

esptool can then be invoked:
```
python .venv/bin/python -m esptool ...
```

