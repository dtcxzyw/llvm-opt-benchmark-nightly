Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/commands-linux?download=true
inline.NumInlined: 86
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.FsMountList = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%struct.NvmeSmartLog = type <{ i8, i16, i8, i8, i8, [26 x i8], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [320 x i8] }>
%struct.nvme_passthru_cmd = type { i8, i8, i16, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statvfs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, [5 x i32] }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.ErrorPropagator = type { ptr, ptr }

@.str = private unnamed_addr constant [21 x i8] c"/proc/self/mountinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%*u %*u %u:%u %*s %n%*s%n%c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" - %n%*s%n %n%*s%n%c\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"btrfs\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"../qga/commands-linux.c\00", align 1
@__func__.qmp_guest_fsfreeze_do_freeze_list = private unnamed_addr constant [34 x i8] c"qmp_guest_fsfreeze_do_freeze_list\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"failed to freeze %s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"listing /sys/block directory\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"/sys/block\00", align 1
@__func__.qmp_guest_get_disks = private unnamed_addr constant [20 x i8] c"qmp_guest_get_disks\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Can't open directory \22/sys/block\22\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"  skipping entry: %s\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"  checking disk size\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"/sys/block/%s/size\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"  failed to read disk size\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"  skipping zero-sized disk\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"  adding %s\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"/sys/block/%s\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Failed to get device name for syspath: %s\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"  failed to check disk path, ignoring error: %s\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"  failed to get device info, ignoring error: %s\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Building guest fsinfo for '%s'\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"guest-fstrim called\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"failed to open: %s\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"trim not supported\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"failed to trim: %s\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"/sys/devices/system/cpu\00", align 1
@__func__.qmp_guest_get_vcpus = private unnamed_addr constant [20 x i8] c"qmp_guest_get_vcpus\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"failed to list entries: %s\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"cpu%ld\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"/sys/devices/system/cpu/cpu%ld/\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"head != NULL\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"/sys/devices/system/memory/\00", align 1
@__func__.qmp_guest_get_memory_blocks = private unnamed_addr constant [28 x i8] c"qmp_guest_get_memory_blocks\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Can't open directory\22/sys/devices/system/memory/\22\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"guest reported zero memory blocks!\00", align 1
@__func__.qmp_guest_get_memory_block_info = private unnamed_addr constant [32 x i8] c"qmp_guest_get_memory_block_info\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"open(\22%s\22)\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"block_size_bytes\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"/proc/stat\00", align 1
@__func__.qmp_guest_get_cpustats = private unnamed_addr constant [23 x i8] c"qmp_guest_get_cpustats\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"%s %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"Parsing cpu stat from %s failed, see \22man proc\22\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"/proc/net/ipv6_route\00", align 1
@__func__.qmp_guest_network_get_route = private unnamed_addr constant [28 x i8] c"qmp_guest_network_get_route\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"%32s %x %32s %x %32s %x %x %x %x %s\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"%s %X %X %x %d %d %d %X %d %d %d\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"/proc/self/mounts\00", align 1
@__func__.build_fs_mount_list_from_mtab = private unnamed_addr constant [30 x i8] c"build_fs_mount_list_from_mtab\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"failed to open mtab file: '%s'\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"cifs\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"failed to stat device file '%s': %s\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"failed to query udev\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"failed to query udev for path: %s\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"DM_NAME\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"failed to query udev for device alias for: %s\00", align 1
@__func__.is_disk_virtual = private unnamed_addr constant [16 x i8] c"is_disk_virtual\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"realpath(\22%s\22)\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"/devices/virtual/block/\00", align 1
@error_fatal = external global ptr, align 8
@__func__.build_guest_fsinfo_for_device = private unnamed_addr constant [30 x i8] c"build_guest_fsinfo_for_device\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"  parse sysfs path '%s'\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"%s/slaves\00", align 1
@__func__.build_guest_fsinfo_for_virtual_device = private unnamed_addr constant [38 x i8] c"build_guest_fsinfo_for_virtual_device\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"opendir(\22%s\22)\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"readdir(\22%s\22)\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c" slave device '%s'\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"%s/slaves/%s\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"ID_SERIAL\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"/devices/pci\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"/devices/css\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"/virtio\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"Unsupported device type for '%s'\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"%*x:%*x/%x:%x:%x.%x%n\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"only pci device is supported: sysfs path '%s'\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"ata_piix\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"sym53c8xx\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"virtio-pci\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"ahci\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"nvme\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"xhci_hcd\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"ehci-pci\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"/%x:%x:%x.%x%n\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"unsupported driver or sysfs path '%s'\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"/target\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"%*u:%*u:%*u/%*u:%u:%u:%u\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"/ata\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"/host\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"invalid sysfs path '%s' (driver '%s')\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"no host for '%s' (driver '%s')\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"unknown driver '%s' (sysfs path '%s')\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"%s/driver\00", align 1
@__func__.build_hosts = private unnamed_addr constant [12 x i8] c"build_hosts\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"ata%d\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"host%d\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"%*x/%x.%x.%x/%*x.%*x.%x/\00", align 1
@.str.93 = private unnamed_addr constant [42 x i8] c"could not parse ccw device sysfs path: %s\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"/block\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"Unsupported virtio device '%s'\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"  listing entries in: %s\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"failed to list entries in %s\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"  adding dependent device: %s\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"Failed to open device: %s: %s\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"Failed to get smart: %s: %s\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"/sys/dev/block/%u:%u\00", align 1
@__func__.guest_suspend = private unnamed_addr constant [14 x i8] c"guest_suspend\00", align 1
@.str.103 = private unnamed_addr constant [57 x i8] c"the requested suspend mode is not supported by the guest\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"systemd-hibernate\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"systemd-suspend\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"systemd-hybrid-sleep\00", align 1
@__const.systemd_supports_mode.systemctl_args = private unnamed_addr constant [3 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106], align 16
@.str.107 = private unnamed_addr constant [10 x i8] c"systemctl\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@__func__.run_process_child = private unnamed_addr constant [18 x i8] c"run_process_child\00", align 1
@.str.109 = private unnamed_addr constant [43 x i8] c"failed to create child process, error '%s'\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"hibernate\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"hybrid-sleep\00", align 1
@__const.systemd_suspend.systemctl_args = private unnamed_addr constant [3 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.112], align 16
@__func__.systemd_suspend = private unnamed_addr constant [16 x i8] c"systemd_suspend\00", align 1
@.str.113 = private unnamed_addr constant [48 x i8] c"the helper program 'systemctl %s' was not found\00", align 1
@.str.114 = private unnamed_addr constant [79 x i8] c"the helper program 'systemctl %s' returned an unexpected exit status code (%d)\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"--hibernate\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"--suspend\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"--suspend-hybrid\00", align 1
@__const.pmutils_supports_mode.pmutils_args = private unnamed_addr constant [3 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117], align 16
@.str.118 = private unnamed_addr constant [16 x i8] c"pm-is-supported\00", align 1
@__func__.pmutils_supports_mode = private unnamed_addr constant [22 x i8] c"pmutils_supports_mode\00", align 1
@.str.119 = private unnamed_addr constant [69 x i8] c"the helper program '%s' returned an unexpected exit status code (%d)\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"pm-hibernate\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"pm-suspend\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"pm-suspend-hybrid\00", align 1
@__const.pmutils_suspend.pmutils_binaries = private unnamed_addr constant [3 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122], align 16
@__func__.pmutils_suspend = private unnamed_addr constant [16 x i8] c"pmutils_suspend\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"the helper program '%s' was not found\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@__func__.linux_sys_state_supports_mode = private unnamed_addr constant [30 x i8] c"linux_sys_state_supports_mode\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"unknown guest suspend mode\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"/sys/power/state\00", align 1
@__const.linux_sys_state_suspend.sysfile_strs = private unnamed_addr constant [3 x ptr] [ptr @.str.124, ptr @.str.125, ptr null], align 16
@__func__.linux_sys_state_suspend = private unnamed_addr constant [24 x i8] c"linux_sys_state_suspend\00", align 1
@.str.128 = private unnamed_addr constant [34 x i8] c"suspend: cannot write to '%s': %m\00", align 1
@__func__.transfer_vcpu = private unnamed_addr constant [14 x i8] c"transfer_vcpu\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"could not open %s/%s\00", align 1
@.str.130 = private unnamed_addr constant [41 x i8] c"logical processor #%ld can't be offlined\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"pread(\22%s/%s\22)\00", align 1
@.str.132 = private unnamed_addr constant [31 x i8] c"pread(\22%s/%s\22): unexpected EOF\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"pwrite(\22%s/%s\22)\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"res == 0\00", align 1
@__func__.transfer_memory_block = private unnamed_addr constant [22 x i8] c"transfer_memory_block\00", align 1
@.str.135 = private unnamed_addr constant [44 x i8] c"Internal error, 'result' should not be NULL\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"/sys/devices/system/memory/memory%ld/\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.138 = private constant [7 x i8] c"online\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@__func__.ga_write_sysfs_file = private unnamed_addr constant [20 x i8] c"ga_write_sysfs_file\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"open sysfs file \22%s\22\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"pwrite sysfs file \22%s\22\00", align 1
@__func__.ga_read_sysfs_file = private unnamed_addr constant [19 x i8] c"ga_read_sysfs_file\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"pread sysfs file \22%s\22\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"pread sysfs file \22%s\22: unexpected EOF\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"/proc/diskstats\00", align 1
@__func__.guest_get_diskstats = private unnamed_addr constant [20 x i8] c"guest_get_diskstats\00", align 1
@.str.146 = private unnamed_addr constant [69 x i8] c"%u %u %s %lu %lu %lu%lu %lu %lu %lu %u %u %u %u%lu %lu %lu %u %lu %u\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"%02hhx\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @build_fs_mount_list(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 7 uses
  %3 = alloca %struct.stat, align 8               ; 7 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i8 0, ptr %i.c, align 1, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i32 0, ptr %i.e, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 0, ptr %i.f, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i32 0, ptr %i.h, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 0, ptr %i.i, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i32 0, ptr %i.j, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i32 0, ptr %i.k, align 4, !annotation !7
  %i.l = tail call noalias ptr @fopen64(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %dev_exists.exit.preheader

dev_exists.exit.preheader:                        ; preds = %bb.a
  %i.m = call i64 @__getdelim(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10, ptr noundef nonnull %i.l) #14
  %.not4274 = icmp eq i64 %i.m, -1
  br i1 %.not4274, label %dev_exists.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %dev_exists.exit.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @setmntent(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1) #14 ; 4 uses
  %.not.i50.not = icmp eq ptr %i.q, null
  br i1 %.not.i50.not, label %bb.c, label %dev_exists.exit.preheader.i

dev_exists.exit.preheader.i:                      ; preds = %bb.b
  %i.r = tail call ptr @getmntent(ptr noundef nonnull %i.q) #14 ; 2 uses
  %.not3857.i = icmp eq ptr %i.r, null
  br i1 %.not3857.i, label %dev_exists.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %dev_exists.exit.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 88, ptr noundef nonnull @__func__.build_fs_mount_list_from_mtab, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48) #14
end_hunk_0
begin_hunk_1_@qmp_guest_get_cpustats:bb.a
  %i.ah = icmp ne i16 %i.ag, 0                    ; 2 uses
  %i.ai = zext i1 %i.ah to i32                    ; 0 uses
  %i.aj = load i8, ptr %i.s, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond, label %bb.l, label %bb.e, !llvm.loop !29

bb.e:                                             ; preds = %bb.d
  %i.al = icmp slt i32 %i.y, 5
  br i1 %i.al, label %.thread76, label %bb.f

.thread76:                                        ; preds = %bb.e
  call void (ptr, ...) @slog(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.39) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.am = call noalias dereferenceable_or_null(144) ptr @g_malloc0(i64 noundef 144) #17 ; 19 uses
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = call i64 @__isoc23_strtol(ptr noundef nonnull %i.s, ptr noundef null, i32 noundef 10) #14, !inline_history !30
  %i.ap = shl i64 %i.ao, 32
  %i.aq = ashr exact i64 %i.ap, 32
  store i64 %i.aq, ptr %i.an, align 8
  %i.ar = load i64, ptr %i.d, align 8
  %i.as = mul i64 %i.ar, 1000
  %i.at = udiv i64 %i.as, %i.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.at, ptr %i.au, align 8
  %i.av = load i64, ptr %i.l, align 8
  %i.aw = mul i64 %i.av, 1000
  %i.ax = udiv i64 %i.aw, %i.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = load i64, ptr %i.e, align 8
  %i.ba = mul i64 %i.az, 1000
  %i.bb = udiv i64 %i.ba, %i.u
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = load i64, ptr %i.f, align 8
  %i.be = mul i64 %i.bd, 1000
  %i.bf = udiv i64 %i.be, %i.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %i.bf, ptr %i.bg, align 8
  %.not70 = icmp eq i32 %i.y, 5
  br i1 %.not70, label %.thread75, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i8 1, ptr %i.bh, align 8
  %i.bi = load i64, ptr %i.g, align 8
  %i.bj = mul i64 %i.bi, 1000
  %i.bk = udiv i64 %i.bj, %i.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = icmp samesign ugt i32 %i.y, 6
  br i1 %i.bm, label %bb.h, label %.thread75

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i8 1, ptr %i.bn, align 8
  %i.bo = load i64, ptr %i.h, align 8
  %i.bp = mul i64 %i.bo, 1000
  %i.bq = udiv i64 %i.bp, %i.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i8 1, ptr %i.bs, align 8
  %i.bt = load i64, ptr %i.i, align 8
  %i.bu = mul i64 %i.bt, 1000
  %i.bv = udiv i64 %i.bu, %i.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = icmp samesign ugt i32 %i.y, 8
  br i1 %i.bx, label %bb.i, label %.thread75

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store i8 1, ptr %i.by, align 8
  %i.bz = load i64, ptr %i.j, align 8
  %i.ca = mul i64 %i.bz, 1000
  %i.cb = udiv i64 %i.ca, %i.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store i64 %i.cb, ptr %i.cc, align 8
  %.not79 = icmp eq i32 %i.y, 9
  br i1 %.not79, label %.thread75, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store i8 1, ptr %i.cd, align 8
  %i.ce = load i64, ptr %i.k, align 8
  %i.cf = mul i64 %i.ce, 1000
  %i.cg = udiv i64 %i.cf, %i.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = icmp samesign ugt i32 %i.y, 10
  br i1 %i.ci, label %bb.k, label %.thread75

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  store i8 1, ptr %i.cj, align 8
  %i.ck = load i64, ptr %i.m, align 8
  %i.cl = mul i64 %i.ck, 1000
  %i.cm = udiv i64 %i.cl, %i.u
  %i.cn = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i64 %i.cm, ptr %i.cn, align 8
  br label %.thread75

.thread75:                                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %i.co = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #17 ; 2 uses
  store ptr %i.co, ptr %.06881, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.am, ptr %i.cp, align 8
  %i.cq = load ptr, ptr %.06881, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.d, %.thread75
  %.1 = phi ptr [ %i.cq, %.thread75 ], [ %.06881, %bb.c ], [ %.06881, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.cr = call i64 @__getdelim(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 10, ptr noundef nonnull %i.p) #14
  %.not = icmp eq i64 %i.cr, -1
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.l, %.preheader, %.thread76
  %i.cs = load ptr, ptr %i.c, align 8
  call void @free(ptr noundef %i.cs) #14
  %i.ct = call i32 @fclose(ptr noundef nonnull %i.p) ; 0 uses
  %.0..0..0..0. = load ptr, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.0..0..0..0., %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.0
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

declare void @error_setg_file_open_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @qmp_guest_network_get_route(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %i.e = alloca [33 x i8], align 16               ; 6 uses
  %i.f = alloca [33 x i8], align 16               ; 6 uses
  %i.g = alloca [33 x i8], align 16               ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 6 uses
  %i.u = alloca i32, align 4                      ; 6 uses
  %i.v = alloca i32, align 4                      ; 6 uses
  %i.w = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !annotation !7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.03677 = phi ptr [ %i.a, %bb.a ], [ %.3, %bb.m ] ; 3 uses
  %i.x = phi i1 [ false, %bb.a ], [ true, %bb.m ] ; 3 uses
  %i.y = phi i1 [ true, %bb.a ], [ false, %bb.m ]
  %.sroa.speculated = select i1 %i.x, ptr @.str.44, ptr @.str.43 ; 2 uses
  %i.z = call noalias ptr @fopen64(ptr noundef nonnull %.sroa.speculated, ptr noundef nonnull @.str.1) ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.ab = call i64 @__getdelim(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 10, ptr noundef nonnull %i.z) #14
  %.not67 = icmp eq i64 %i.ab, -1
  br i1 %.not67, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call ptr @__errno_location() #16
  %i.ad = load i32, ptr %i.ac, align 4
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 2170, ptr noundef nonnull @__func__.qmp_guest_network_get_route, i32 noundef %i.ad, ptr noundef nonnull @.str.37, ptr noundef nonnull %.sroa.speculated) #14
  br label %bb.m

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %.13169 = phi ptr [ %.131.be, %.backedge ], [ %.03677, %.preheader ] ; 5 uses
  %.03468 = phi i32 [ %.034.be, %.backedge ], [ 1, %.preheader ] ; 4 uses
  %i.ae = icmp eq i32 %.03468, 0
  %or.cond = or i1 %i.x, %i.ae
  br i1 %or.cond, label %bb.d, label %.backedge

bb.d:                                             ; preds = %.lr.ph
  %i.af = call noalias dereferenceable_or_null(176) ptr @g_malloc0(i64 noundef 176) #17 ; 35 uses
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.e, i8 0, i64 33, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.f, i8 0, i64 33, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.g, i8 0, i64 33, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i32 0, ptr %i.h, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 0, ptr %i.i, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i32 0, ptr %i.j, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i32 0, ptr %i.k, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i32 0, ptr %i.l, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i32 0, ptr %i.m, align 4, !annotation !7
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.ag, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.d) #14
  %.not36 = icmp eq i32 %i.ah, 10
  br i1 %.not36, label %bb.f, label %bb.g, !llvm.loop !31

bb.f:                                             ; preds = %bb.e
  %i.ai = call fastcc ptr @hex_to_ip_address(ptr noundef %i.e, i32 noundef 1) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.g, label %.critedge, !llvm.loop !31

.critedge:                                        ; preds = %bb.f
  %i.al = call noalias ptr @g_strdup(ptr noundef nonnull %i.d) #14
  store ptr %i.al, ptr %i.af, align 8
  %i.am = call fastcc ptr @hex_to_ip_address(ptr noundef %i.f, i32 noundef 1)
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call fastcc ptr @hex_to_ip_address(ptr noundef %i.g, i32 noundef 1)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = load i32, ptr %i.h, align 4
  %i.ar = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.46, i32 noundef %i.aq) #14
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = load i32, ptr %i.i, align 4
  %i.au = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.46, i32 noundef %i.at) #14
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = load i32, ptr %i.j, align 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i8 1, ptr %i.az, align 8
  %i.ba = load i32, ptr %i.m, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store i8 1, ptr %i.bd, align 8
  %i.be = load i32, ptr %i.k, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i8 1, ptr %i.bh, align 8
  %i.bi = load i32, ptr %i.l, align 4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  store i64 6, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i32 0, ptr %i.n, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i32 0, ptr %i.o, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i32 0, ptr %i.p, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i32 0, ptr %i.q, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i32 0, ptr %i.r, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store i32 0, ptr %i.s, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i32 0, ptr %i.t, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  store i32 0, ptr %i.u, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  store i32 0, ptr %i.v, align 4, !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #14
  store i32 0, ptr %i.w, align 4, !annotation !7
  %i.bm = load ptr, ptr %i.c, align 8
  %i.bn = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.bm, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.d, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #14
  %.not35 = icmp eq i32 %i.bn, 11
  br i1 %.not35, label %bb.i, label %bb.j, !llvm.loop !31

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %i.n, align 4             ; 4 uses
  %i.bp = lshr i32 %i.bo, 24
  %i.bq = lshr i32 %i.bo, 16
  %i.br = and i32 %i.bq, 255
  %i.bs = lshr i32 %i.bo, 8
  %i.bt = and i32 %i.bs, 255
  %i.bu = and i32 %i.bo, 255
  %i.bv = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.148, i32 noundef %i.bu, i32 noundef %i.bt, i32 noundef %i.br, i32 noundef %i.bp) #14 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = icmp eq ptr %i.bv, null
  br i1 %i.bx, label %bb.j, label %.critedge38, !llvm.loop !31

.critedge38:                                      ; preds = %bb.i
  %i.by = call noalias ptr @g_strdup(ptr noundef nonnull %i.d) #14
  store ptr %i.by, ptr %i.af, align 8
  %i.bz = load i32, ptr %i.o, align 4             ; 4 uses
  %i.ca = lshr i32 %i.bz, 24
  %i.cb = lshr i32 %i.bz, 16
  %i.cc = and i32 %i.cb, 255
  %i.cd = lshr i32 %i.bz, 8
  %i.ce = and i32 %i.cd, 255
  %i.cf = and i32 %i.bz, 255
  %i.cg = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.148, i32 noundef %i.cf, i32 noundef %i.ce, i32 noundef %i.cc, i32 noundef %i.ca) #14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.cg, ptr %i.ch, align 8
  %i.ci = load i32, ptr %i.p, align 4             ; 4 uses
  %i.cj = lshr i32 %i.ci, 24
  %i.ck = lshr i32 %i.ci, 16
  %i.cl = and i32 %i.ck, 255
  %i.cm = lshr i32 %i.ci, 8
  %i.cn = and i32 %i.cm, 255
  %i.co = and i32 %i.ci, 255
  %i.cp = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.148, i32 noundef %i.co, i32 noundef %i.cn, i32 noundef %i.cl, i32 noundef %i.cj) #14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = load i32, ptr %i.t, align 4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store i8 1, ptr %i.cu, align 8
  %i.cv = load i32, ptr %i.q, align 4
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store i8 1, ptr %i.cy, align 8
  %i.cz = load i32, ptr %i.r, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i8 1, ptr %i.dc, align 8
  %i.dd = load i32, ptr %i.s, align 4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store i8 1, ptr %i.dg, align 8
  %i.dh = load i32, ptr %i.u, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store i64 %i.di, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i8 1, ptr %i.dk, align 8
  %i.dl = load i32, ptr %i.v, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store i64 %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 1, ptr %i.do, align 8
  %i.dp = load i32, ptr %i.w, align 4
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 %i.dq, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  store i64 4, ptr %i.ds, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %bb.k

.thread:                                          ; preds = %.critedge, %.critedge38
  %i.dt = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #17 ; 2 uses
  store ptr %i.dt, ptr %.13169, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.af, ptr %i.du, align 8
  %i.dv = load ptr, ptr %.13169, align 8
  br label %.backedge

bb.k:                                             ; preds = %bb.j, %bb.g
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @qapi_free_GuestNetworkRoute(ptr noundef nonnull %i.af) #14
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.k, %.thread, %.lr.ph
  %.034.be = phi i32 [ 0, %.lr.ph ], [ %.03468, %.thread ], [ %.03468, %bb.k ], [ %.03468, %bb.l ]
  %.131.be = phi ptr [ %.13169, %.lr.ph ], [ %i.dv, %.thread ], [ %.13169, %bb.k ], [ %.13169, %bb.l ] ; 2 uses
  %i.dw = call i64 @__getdelim(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 10, ptr noundef nonnull %i.z) #14
  %.not = icmp eq i64 %i.dw, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %.131.lcssa = phi ptr [ %.03677, %.preheader ], [ %.131.be, %.backedge ]
  %i.dx = call i32 @fclose(ptr noundef nonnull %i.z) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.c
  %.3 = phi ptr [ %.03677, %bb.c ], [ %.131.lcssa, %._crit_edge ]
  br i1 %i.y, label %bb.b, label %bb.n, !llvm.loop !32

bb.n:                                             ; preds = %bb.m
  %i.dy = load ptr, ptr %i.c, align 8
  call void @free(ptr noundef %i.dy) #14
  %.0..0..0..0. = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.0..0..0..0.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @hex_to_ip_address(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 5 uses
  %2 = alloca %struct.in6_addr, align 4           ; 20 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(46) %i.a, i8 0, i64 46, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !7
  %i.b = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %0, ptr noundef nonnull @.str.147, ptr noundef nonnull %2) #14
  %.not17 = icmp eq i32 %i.b, 1
  br i1 %.not17, label %bb.c, label %g_strdup_inline.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.d) #14
  %.not17.1 = icmp eq i32 %i.e, 1
  br i1 %.not17.1, label %bb.d, label %g_strdup_inline.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.g) #14
  %.not17.2 = icmp eq i32 %i.h, 1
  br i1 %.not17.2, label %bb.e, label %g_strdup_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.k = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.j) #14
  %.not17.3 = icmp eq i32 %i.k, 1
  br i1 %.not17.3, label %bb.f, label %g_strdup_inline.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.m) #14
  %.not17.4 = icmp eq i32 %i.n, 1
  br i1 %.not17.4, label %bb.g, label %g_strdup_inline.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.q = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.p) #14
  %.not17.5 = icmp eq i32 %i.q, 1
  br i1 %.not17.5, label %bb.h, label %g_strdup_inline.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.t = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.s) #14
  %.not17.6 = icmp eq i32 %i.t, 1
  br i1 %.not17.6, label %bb.i, label %g_strdup_inline.exit

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.w = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.v) #14
  %.not17.7 = icmp eq i32 %i.w, 1
  br i1 %.not17.7, label %bb.j, label %g_strdup_inline.exit

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.y) #14
  %.not17.8 = icmp eq i32 %i.z, 1
  br i1 %.not17.8, label %bb.k, label %g_strdup_inline.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ac = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.ab) #14
  %.not17.9 = icmp eq i32 %i.ac, 1
  br i1 %.not17.9, label %bb.l, label %g_strdup_inline.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.af = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.ae) #14
  %.not17.10 = icmp eq i32 %i.af, 1
  br i1 %.not17.10, label %bb.m, label %g_strdup_inline.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ai = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.ah) #14
  %.not17.11 = icmp eq i32 %i.ai, 1
  br i1 %.not17.11, label %bb.n, label %g_strdup_inline.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.al = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.ak) #14
  %.not17.12 = icmp eq i32 %i.al, 1
  br i1 %.not17.12, label %bb.o, label %g_strdup_inline.exit

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ao = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.an) #14
  %.not17.13 = icmp eq i32 %i.ao, 1
  br i1 %.not17.13, label %bb.p, label %g_strdup_inline.exit

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ar = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.aq) #14
  %.not17.14 = icmp eq i32 %i.ar, 1
  br i1 %.not17.14, label %bb.q, label %g_strdup_inline.exit

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.au = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.at) #14
  %.not17.15 = icmp eq i32 %i.au, 1
  br i1 %.not17.15, label %bb.r, label %g_strdup_inline.exit

bb.r:                                             ; preds = %bb.q
  %i.av = call ptr @inet_ntop(i32 noundef 10, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 46) #14 ; 0 uses
  %i.aw = call noalias ptr @g_strdup(ptr noundef nonnull %i.a) #14
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.aw, %bb.r ], [ null, %bb.b ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  %i.ax = load i32, ptr %0, align 4               ; 4 uses
  %i.ay = lshr i32 %i.ax, 24
  %i.az = lshr i32 %i.ax, 16
  %i.ba = and i32 %i.az, 255
  %i.bb = lshr i32 %i.ax, 8
  %i.bc = and i32 %i.bb, 255
  %i.bd = and i32 %i.ax, 255
  %i.be = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.148, i32 noundef %i.bd, i32 noundef %i.bc, i32 noundef %i.ba, i32 noundef %i.ay) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %g_strdup_inline.exit
  %.1 = phi ptr [ %.0, %g_strdup_inline.exit ], [ %i.be, %bb.s ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare ptr @setmntent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @getmntent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @endmntent(ptr noundef) local_unnamed_addr #3

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #7

declare ptr @udev_new() local_unnamed_addr #7

declare ptr @udev_device_new_from_syspath(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @udev_device_get_devnode(ptr noundef) local_unnamed_addr #7

declare ptr @udev_unref(ptr noundef) local_unnamed_addr #7

declare ptr @udev_device_unref(ptr noundef) local_unnamed_addr #7

declare ptr @udev_device_get_property_value(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
end_hunk_1
