# Versioning System For IO
# InfinitiveOS RELEASE VERSION
IO_VERSION_MAJOR = 2
IO_VERSION_MINOR = 0-Jackeagle-Birthday-Special
IO_VERSION_MAINTENANCE =

VERSION := $(IO_VERSION_MAJOR).$(IO_VERSION_MINOR)$(IO_VERSION_MAINTENANCE)

# Set IO_BUILDTYPE
ifdef IO_EXPERIMENTAL
    IO_BUILDTYPE := EXPERIMENTAL
endif
ifdef IO_MAINTENANCE 
    IO_BUILDTYPE := MAINTENANCE 
endif
ifdef IO_BETA
    IO_BUILDTYPE := BETA
endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by IO Devs!)
ifdef IO_BUILDTYPE
else
    IO_BUILDTYPE := UNOFFICIAL
    IO_VERSION_MAJOR := 2
    IO_VERSION_MINOR := 0
endif

# Set IO version
ifdef IO_RELEASE
    IO_VERSION := InfinitiveOS-v$(VERSION)
else
    IO_VERSION := InfinitiveOS-v$(VERSION)-$(IO_BUILD)-$(IO_BUILDTYPE)-$(shell date +%Y%m%d-%H%M)
endif

IO_DISPLAY_VERSION := $(VERSION)
IO_DISPLAY_BUILDTYPE := $(IO_BUILDTYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.io.version=$(IO_DISPLAY_VERSION) \
