cmd_usr/include/linux/spi/.install := /bin/bash ../scripts/headers_install.sh ./usr/include/linux/spi ../include/uapi/linux/spi spidev.h; /bin/bash ../scripts/headers_install.sh ./usr/include/linux/spi ../include/linux/spi ; /bin/bash ../scripts/headers_install.sh ./usr/include/linux/spi ./include/generated/uapi/linux/spi ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/linux/spi/$$F; done; touch usr/include/linux/spi/.install
