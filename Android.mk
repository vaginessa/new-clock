LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_RESOURCE_DIR := packages/apps/DeskClock/res

LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/design/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/percent/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/transition/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v14/preference/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/appcompat/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/gridlayout/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/preference/res
LOCAL_RESOURCE_DIR += prebuilts/sdk/current/support/v7/recyclerview/res

LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := current

LOCAL_PACKAGE_NAME := DeskClock
LOCAL_OVERRIDES_PACKAGES := AlarmClock

LOCAL_SRC_FILES := $(call all-java-files-under, src gen)

LOCAL_PROGUARD_FLAG_FILES := ../../../frameworks/support/design/proguard-rules.pro
LOCAL_PROGUARD_FLAG_FILES += ../../../frameworks/support/v7/preference/proguard-rules.pro
LOCAL_PROGUARD_FLAG_FILES += ../../../frameworks/support/v7/recyclerview/proguard-rules.pro

LOCAL_STATIC_JAVA_LIBRARIES := android-support-design-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-percent-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-transition-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v13-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v14-preference-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-appcompat-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-gridlayout-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-preference-prebuilt
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-recyclerview-prebuilt

LOCAL_AAPT_FLAGS := --auto-add-overlay
LOCAL_AAPT_FLAGS += --extra-packages android.support.compat
LOCAL_AAPT_FLAGS += --extra-packages android.support.design
LOCAL_AAPT_FLAGS += --extra-packages android.support.percent
LOCAL_AAPT_FLAGS += --extra-packages android.support.transition
LOCAL_AAPT_FLAGS += --extra-packages android.support.v14.preference
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.appcompat
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.gridlayout
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.preference
LOCAL_AAPT_FLAGS += --extra-packages android.support.v7.recyclerview

include $(BUILD_PACKAGE)
