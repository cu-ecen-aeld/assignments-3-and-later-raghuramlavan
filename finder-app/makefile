writer:
ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
	aarch64_be-none-linux-gnu-gcc writer.c -o writer
endif
ifndef CROSS_COMPILE
	gcc writer.c -o writer
endif
clean:
ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
	rm -f *.o writer *.elf *.map
endif
ifndef CROSS_COMPILE
	rm -f *.o writer
endif

