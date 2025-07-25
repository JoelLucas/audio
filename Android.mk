ifeq ($(call my-dir),$(call project-path-for,qcom-audio))

ifneq ($(DUAL_AUDIO_FRAMEWORK_AR), true)
ifneq ($(AUDIO_USE_STUB_HAL), true)
ifneq ($(filter mpq8092 msm8960 msm8226 msm8x26 msm8610 msm8974 msm8x74 apq8084 msm8916 msm8994 msm8992 msm8909 msm8996 msm8952 msm8937 thorium msm8953 msmgold msm8998 sdm660 sdm845 sdm710 apq8098_latv qcs605 sdmshrike msmnile gen4 kona lahaina holi $(MSMSTEPPE) $(TRINKET) atoll lito bengal,$(TARGET_BOARD_PLATFORM)),)

MY_LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_USES_LEGACY_ALSA_AUDIO),true)
include $(MY_LOCAL_PATH)/legacy/Android.mk
else
ifneq ($(filter mpq8092,$(TARGET_BOARD_PLATFORM)),)
include $(MY_LOCAL_PATH)/hal_mpq/Android.mk
else
include $(MY_LOCAL_PATH)/hal/Android.mk
endif
include $(MY_LOCAL_PATH)/hal/audio_extn/Android.mk
endif

endif
endif
endif

endif
