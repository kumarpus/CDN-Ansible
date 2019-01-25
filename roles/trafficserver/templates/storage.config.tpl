#From Ansible

#Edit the storage space and disk path 

#/media/ramdisk  20G    volume=1        id=ramdisk
#/home/ubuntu    250G     volume=2        id=mount

var/trafficserver 50G

#
# storage.config - Storage Configuration file
#
# Documentation:
#    https://docs.trafficserver.apache.org/en/latest/admin-guide/files/storage.config.en.html
#
# The storage configuration is a list of all the storage to
# be used by the cache.
#
#
#############################################################
# Using a file for the cache storage
#
# <pathname> <size>
#
# Where 'pathname' is full path to the directory where you want
# the cache-file to live and 'size' is size in bytes
#
# Example: 128MB cache file(/opt/ats/var/trafficserver/cache.db)
#      /opt/ats/var/trafficserver 128M
#
# Example: 144MB cache file(/opt/ats/var/trafficserver/cache.db)
#          assuming prefix of '/opt/ats'
#      var/trafficserver 150994944
#
# Example: 512MB cache file(/opt/ats/var/trafficserver/cache.db)
#          assuming prefix of '/opt/ats'
#      var/trafficserver 512M
#
#
#############################################################
##              O_DIRECT Specific Configuration            ##
#############################################################
#
# Examples: Using O_DIRECT on disks (Linux kernel >= 2.6.3,
# FreeBSD > 5.3)
#
#      /dev/disc/by-id/[Insert_ID_Here_12345]         		# Linux
#      /dev/disc/by-path/[Insert-Path-Here:12:34:56-1.0.0.0]	# Linux
#
#      /dev/ada1            					# FreeBSD
#
# Note that disks are identified by id or path. This is to prevent changes
# by the kernel (which could occur if a disk was simply described as /dev/sda, sdb, etc.).
#
# Also note that when using these raw devices in O_DIRECT mode, you
# do not need to specify the partition size. It's automatically
# detected.
#
# A small default cache (256MB). This is set to allow for the regression test to succeed
# most likely you'll want to use a larger cache. And, we definitely recommend the use
# of raw devices for production caches.
#var/trafficserver 256M
