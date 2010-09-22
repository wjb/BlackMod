# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_sholes.mk)

# Extremely Blue build time theming vendor setup
# Add Extremely Blue Overrides
PRODUCT_NAME := blackmod_sholes

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/blackmod/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/sholes

PRODUCT_COPY_FILES +=  \
    vendor/blackmod/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/blackmod/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk
