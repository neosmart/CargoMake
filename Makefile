# CargoMake by NeoSmart Technologies
# Written and maintained by Mahmoud Al-Qudsi <mqudsi@neosmart.net>
# Released under the MIT public license
# Obtain updates from https://github.com/neosmart/CargoMake

COLOR ?= auto # Valid COLOR options: {always, auto, never}
CARGO = cargo --color $(COLOR)

.PHONY: all bench build check clean doc install publish run test update

all: build

bench build check clean doc publish update:
	@$(CARGO) $@

install: build
	@$(CARGO) install

run: build
	@$(CARGO) run

test: build
	@$(CARGO) test
