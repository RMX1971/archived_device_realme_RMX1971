cmd_usr/include/uapi/.install := /bin/bash ../scripts/headers_install.sh ./usr/include/uapi ../include/uapi ; /bin/bash ../scripts/headers_install.sh ./usr/include/uapi ../include ; /bin/bash ../scripts/headers_install.sh ./usr/include/uapi ./include/generated/uapi ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/uapi/$$F; done; touch usr/include/uapi/.install