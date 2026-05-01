#! usr/bin/sh
python3 at.py modify_bin --input "factory_MINI-1-v3.3.0.0.bin" --output "factory_winglet.bin" --country_code "NZ" --baud 115200 --uart_num 0 --tx_pin 21 --rx_pin 20 --rts_pin '-1' --cts_pin '-1'
