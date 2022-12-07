![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# Teletype Adapter

This project converts the 5-bit Baudot code from a Teletype Model 28 to ASCII. A ROM contains the lookup table to convert from US-TTY to ASCII, the character set is limited but does include the LTRS/NUMS functionality. The input serial data rate will be around 45 baud and the output was tested to work reliably at 1200. Both input and output require seperate clocks. The output clock on pin 'IN0' is divided by eight to get the baud rate. The input clock on pin 'IN1' is divided by one hundred to get the baud rate. It is expected the ASCII clock can use the internal clock gen and the Baudot clock will use an external PLL or just a simple 555 with a trimpot. The Teletype machine speeds up as it warms up; after 1 hour of running bit times were found to be around 23ms or 43.5 baud so some tweaking will be required. An NTC thermistor in parallel with the right pot might be a good solution.

### Pinout
```
Pinout:
IN0 - ASCII clk *8
IN1 - Baudot clk *100
IN2 - Baudot serial input, hold high for a 'mark', this is the correct idle state
IN3 - NC

IN4 - NC
IN5 - NC
IN6 - NC
IN7 - NC

OUT0 - ASCII serial output
OUT1 - Baudot UART output byte ready
OUT2 - NC
OUT3 - Baudot bit 0

OUT4 - Baudot bit 1
OUT5 - Baudot bit 2
OUT6 - Baudot bit 3
OUT7 - Baudot bit 4
```

![Iamge of teletype setup](https://github.com/Luthor2k/tt02-baudot/blob/main/teleprinter-test.jpg)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip!

Go to https://tinytapeout.com for instructions!

## How to change the Wokwi project

Edit the [info.yaml](info.yaml) and change the wokwi_id to match your project.

## How to enable the GitHub actions to build the ASIC files

Please see the instructions for:

* [Enabling GitHub Actions](https://tinytapeout.com/faq/#when-i-commit-my-change-the-gds-action-isnt-running)
* [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## How does it work?

When you edit the info.yaml to choose a different ID, the [GitHub Action](.github/workflows/gds.yaml) will fetch the digital netlist of your design from Wokwi.

After that, the action uses the open source ASIC tool called [OpenLane](https://www.zerotoasiccourse.com/terminology/openlane/) to build the files needed to fabricate an ASIC.

## Resources

* [FAQ](https://tinytapeout.com/faq/)
* [Digital design lessons](https://tinytapeout.com/digital_design/)
* [Join the community](https://discord.gg/rPK2nSjxy8)

## What next?

* Share your GDS on Twitter, tag it [#tinytapeout](https://twitter.com/hashtag/tinytapeout?src=hashtag_click) and [link me](https://twitter.com/matthewvenn)!
