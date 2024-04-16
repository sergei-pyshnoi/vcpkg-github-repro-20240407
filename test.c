#include <libusb-1.0/libusb.h>

void DoTheThing()
{
    libusb_context* ctx = libusb_init(NULL);
    // We're really not going to even get this far... so this isn't strictly necessary.
    libusb_exit(ctx);
}