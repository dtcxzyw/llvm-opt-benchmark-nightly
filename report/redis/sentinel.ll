inline.NumInlined: 166
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i32, i64, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, ptr, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, [16 x ptr], i32, ptr, ptr, i32, [8 x %struct.connListener], i32, %struct.connListener, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, [4 x %struct.pause_event], [256 x i8], ptr, i64, i32, i32, [128 x i32], i32, i32, %struct.pendingCommandPool, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, ptr, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, [128 x i64], [128 x i64], i64, i64, i64, i64, i64, [7 x %struct.anon], i64, i64, i64, i64, i64, i64, [4 x %struct.durationStats], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.clientBufferLimitsConfig], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i64, i64, i32, i32, ptr, i64, i64, %struct.replDataBuf, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i64, i32, ptr, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [11 x i32], ptr, ptr, i32, i64, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, i32, i32, i32, i64, i64, ptr, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i64, ptr, i32, %struct.aclInfo, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, ptr, ptr, ptr, ptr, ptr, i64, i32, ptr, i32, i32, i32, i64, i32, i32, ptr, i32, i32 }
%struct.connListener = type { [16 x i32], i32, ptr, i32, i32, ptr, ptr }
%struct.pause_event = type { i32, i64 }
%struct.pendingCommandPool = type { ptr, i32, i32, i32 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.durationStats = type { i64, i64, i64 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.redisOpArray = type { ptr, i32, i32 }
%struct.replDataBuf = type { ptr, i64, i64, i64, i64, i64 }
%struct.aclInfo = type { i64, i64, i64, i64, i64 }
%struct.redisTLSContextConfig = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.sentinelState = type { [41 x i8], i64, ptr, i32, i32, i32, i64, i64, ptr, ptr, i32, i64, i32, ptr, ptr, i32, i32 }
%struct.dictType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }
%struct.dictIterator = type { ptr, i64, i32, i32, ptr, ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.listIter = type { ptr, i32 }

@instancesDictType = dso_local global { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr } { ptr @dictSdsHash, ptr null, ptr null, ptr @dictSdsKeyCompare, ptr null, ptr @dictInstancesValDestructor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null }, align 8
@leaderVotesDictType = dso_local global { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr } { ptr @dictSdsHash, ptr null, ptr null, ptr @dictSdsKeyCompare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null }, align 8
@renamedCommandsDictType = dso_local global { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr } { ptr @dictSdsCaseHash, ptr null, ptr null, ptr @dictSdsKeyCaseCompare, ptr @dictSdsDestructor, ptr @dictSdsDestructor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"announce-ip\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"announce-port\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"deny-scripts-reconfig\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sentinel-user\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sentinel-pass\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"current-epoch\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"myid\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"resolve-hostnames\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"announce-hostnames\00", align 1
@preMonitorCfgName = dso_local local_unnamed_addr global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 16
@server = external local_unnamed_addr global %struct.redisServer, align 8
@sentinel = dso_local global %struct.sentinelState zeroinitializer, align 64
@.str.9 = private unnamed_addr constant [61 x i8] c"Sentinel needs config file on disk to save state. Exiting...\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Sentinel config file %s is not writable: %s. Exiting...\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Sentinel ID is %s\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to resolve hostname '%s'\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%s %s %s %d @ %s %s %d\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s %s %s %d\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"+monitor\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"%@ quorum %d\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"listLength(sentinel.scripts_queue) <= SENTINEL_SCRIPT_MAX_QUEUE\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"sentinel.c\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"-script-error\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%s %d %d\00", align 1
@environ = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"+script-child\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@sentinel_script_retry_delay = internal unnamed_addr global i64 30000, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"-script-child\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"%ld %d %d\00", align 1
@.str.28 = private unnamed_addr constant [77 x i8] c"waitpid() returned a pid (%ld) we can't find in our scripts execution queue!\00", align 1
@sentinel_script_max_runtime = internal unnamed_addr global i64 60000, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"-script-timeout\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%s %ld\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"scheduled\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"run-time\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"run-delay\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"retry-num\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"leader\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"observer\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"link->refcount > 0\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"ri->flags & SRI_SENTINEL\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"ri->flags & SRI_MASTER\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"+sentinel-address-update\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"%@ %d additional matching instances\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"flags & (SRI_MASTER|SRI_SLAVE|SRI_SENTINEL)\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"(flags & SRI_MASTER) || master != NULL\00", align 1
@sentinel_default_down_after = internal unnamed_addr global i64 30000, align 8
@sentinel_default_failover_timeout = internal unnamed_addr global i64 180000, align 8
@.str.48 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"sentinel\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"addr || runid\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"+reset-master\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"+slave\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Duplicate master name.\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"Duplicate hostname and port for replica.\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Duplicate runid for sentinel.\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"Can't resolve instance hostname.\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"Invalid port number.\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"Unknown Error for creating instances.\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [45 x i8] c"\0A*** FATAL CONFIG FILE ERROR (Redis %s) ***\0A\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"8.6.1\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"Reading the configuration file, at line %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c">>> '%s'\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"Quorum must be 1 or greater.\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"down-after-milliseconds\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"No such master with specified name.\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"negative or zero time parameter.\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"failover-timeout\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"parallel-syncs\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"notification-script\00", align 1
@.str.76 = private unnamed_addr constant [58 x i8] c"Notification script seems non existing or non executable.\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"client-reconfig-script\00", align 1
@.str.78 = private unnamed_addr constant [68 x i8] c"Client reconfiguration script seems non existing or non executable.\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"auth-pass\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"auth-user\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"Malformed Sentinel id in myid option.\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"config-epoch\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"leader-epoch\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"known-slave\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"known-replica\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"known-sentinel\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"rename-command\00", align 1
@.str.88 = private unnamed_addr constant [57 x i8] c"Same command renamed multiple times with rename-command.\00", align 1
@.str.89 = private unnamed_addr constant [64 x i8] c"Please specify yes or no for the deny-scripts-reconfig options.\00", align 1
@.str.90 = private unnamed_addr constant [59 x i8] c"Please specify yes or no for the resolve-hostnames option.\00", align 1
@.str.91 = private unnamed_addr constant [60 x i8] c"Please specify yes or no for the announce-hostnames option.\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"master-reboot-down-after-period\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"negative time parameter.\00", align 1
@.str.94 = private unnamed_addr constant [47 x i8] c"Unrecognized sentinel configuration statement.\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"sentinel myid %s\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"sentinel myid\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"sentinel deny-scripts-reconfig %s\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"sentinel deny-scripts-reconfig\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"sentinel resolve-hostnames %s\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"sentinel resolve-hostnames\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"sentinel announce-hostnames %s\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"sentinel announce-hostnames\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"sentinel monitor %s %s %d %d\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"sentinel monitor\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"sentinel down-after-milliseconds %s %ld\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"sentinel down-after-milliseconds\00", align 1
@.str.109 = private unnamed_addr constant [33 x i8] c"sentinel failover-timeout %s %ld\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"sentinel failover-timeout\00", align 1
@.str.111 = private unnamed_addr constant [30 x i8] c"sentinel parallel-syncs %s %d\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"sentinel parallel-syncs\00", align 1
@.str.113 = private unnamed_addr constant [35 x i8] c"sentinel notification-script %s %s\00", align 1
@.str.114 = private unnamed_addr constant [29 x i8] c"sentinel notification-script\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"sentinel client-reconfig-script %s %s\00", align 1
@.str.116 = private unnamed_addr constant [32 x i8] c"sentinel client-reconfig-script\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"sentinel auth-pass %s %s\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"sentinel auth-pass\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"sentinel auth-user %s %s\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"sentinel auth-user\00", align 1
@.str.121 = private unnamed_addr constant [48 x i8] c"sentinel master-reboot-down-after-period %s %ld\00", align 1
@.str.122 = private unnamed_addr constant [41 x i8] c"sentinel master-reboot-down-after-period\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"sentinel config-epoch %s %llu\00", align 1
@.str.124 = private unnamed_addr constant [22 x i8] c"sentinel config-epoch\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"sentinel leader-epoch %s %llu\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"sentinel leader-epoch\00", align 1
@.str.127 = private unnamed_addr constant [32 x i8] c"sentinel known-replica %s %s %d\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"sentinel known-slave\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"sentinel known-replica\00", align 1
@.str.130 = private unnamed_addr constant [36 x i8] c"sentinel known-sentinel %s %s %d %s\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"sentinel known-sentinel\00", align 1
@.str.132 = private unnamed_addr constant [33 x i8] c"sentinel rename-command %s %s %s\00", align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"sentinel rename-command\00", align 1
@.str.134 = private unnamed_addr constant [28 x i8] c"sentinel current-epoch %llu\00", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"sentinel current-epoch\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"sentinel announce-ip \00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"sentinel announce-ip\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"sentinel announce-port %d\00", align 1
@.str.139 = private unnamed_addr constant [23 x i8] c"sentinel announce-port\00", align 1
@.str.140 = private unnamed_addr constant [26 x i8] c"sentinel sentinel-user %s\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"sentinel sentinel-user\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"sentinel sentinel-pass %s\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"sentinel sentinel-pass\00", align 1
@.str.144 = private unnamed_addr constant [76 x i8] c"WARNING: Sentinel was not able to save the new configuration on disk!!!: %s\00", align 1
@.str.145 = private unnamed_addr constant [41 x i8] c"Sentinel new configuration saved on disk\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"sentinel-%.8s-%s\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"%s SETNAME %s\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"CLIENT\00", align 1
@sentinel_ping_period = internal unnamed_addr global i64 1000, align 8
@.str.151 = private unnamed_addr constant [23 x i8] c"-cmd-link-reconnection\00", align 1
@.str.152 = private unnamed_addr constant [35 x i8] c"%@ #Failed to establish connection\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"%@ #Failed to initialize TLS\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"%@ #%s\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"-pubsub-link-reconnection\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"pubsub\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"SUBSCRIBE\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"__sentinel__:hello\00", align 1
@sentinel_info_period = internal unnamed_addr global i64 10000, align 8
@.str.160 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"+reboot\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"ip=\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"port=\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"+role-change\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"-role-change\00", align 1
@.str.177 = private unnamed_addr constant [27 x i8] c"%@ new reported role is %s\00", align 1
@.str.178 = private unnamed_addr constant [16 x i8] c"+promoted-slave\00", align 1
@.str.179 = private unnamed_addr constant [30 x i8] c"+failover-state-reconf-slaves\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@sentinel_publish_period = internal unnamed_addr global i64 2000, align 8
@.str.181 = private unnamed_addr constant [18 x i8] c"+convert-to-slave\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"+fix-slave-config\00", align 1
@.str.183 = private unnamed_addr constant [21 x i8] c"+slave-reconf-inprog\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"+slave-reconf-done\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"LOADING\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"MASTERDOWN\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"BUSY\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"%s KILL\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@.str.191 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"+sentinel-address-switch\00", align 1
@.str.193 = private unnamed_addr constant [24 x i8] c"%@ ip %s port %d for %s\00", align 1
@.str.194 = private unnamed_addr constant [23 x i8] c"+sentinel-invalid-addr\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"+sentinel\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"+new-epoch\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.198 = private unnamed_addr constant [20 x i8] c"+config-update-from\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"+switch-master\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"%s %s %d %s %d\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.202 = private unnamed_addr constant [28 x i8] c"%s,%d,%s,%llu,%s,%s,%d,%llu\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"PUBLISH\00", align 1
@.str.204 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
end_hunk_0
begin_hunk_1
@.str.447 = private unnamed_addr constant [19 x i8] c"#tilt mode entered\00", align 1
@redis_tls_ctx = external local_unnamed_addr global ptr, align 8
@redis_tls_client_ctx = external local_unnamed_addr global ptr, align 8
@.str.448 = private unnamed_addr constant [47 x i8] c"Failed to save config file. Check server logs.\00", align 1
@switch.table.sentinelConfigGetCommand = private unnamed_addr constant [5 x ptr] [ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211], align 8
@switch.table.addReplySentinelRedisInstance = private unnamed_addr constant [7 x ptr] [ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226], align 8

; Function Attrs: nounwind uwtable
define dso_local void @dictInstancesValDestructor(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @releaseSentinelRedisInstance(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @releaseSentinelRedisInstance(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @dictRelease(ptr noundef %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @dictRelease(ptr noundef %i.d) #26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call ptr @releaseInstanceLink(ptr noundef %i.f, ptr noundef %0) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call void @sdsfree(ptr noundef %i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  tail call void @sdsfree(ptr noundef %i.k) #26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  tail call void @sdsfree(ptr noundef %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  tail call void @sdsfree(ptr noundef %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  tail call void @sdsfree(ptr noundef %i.q) #26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  tail call void @sdsfree(ptr noundef %i.s) #26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  tail call void @sdsfree(ptr noundef %i.u) #26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32
  tail call void @sdsfree(ptr noundef %i.w) #26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  tail call void @sdsfree(ptr noundef %i.y) #26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  tail call void @sdsfree(ptr noundef %i.ab) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37
  tail call void @sdsfree(ptr noundef %i.ad) #26
  tail call void @zfree(ptr noundef nonnull %i.aa) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  tail call void @dictRelease(ptr noundef %i.af) #26
  %i.ag = load i32, ptr %0, align 8, !tbaa !39
  %i.ah = and i32 %i.ag, 130
  %or.cond.not = icmp eq i32 %i.ah, 130
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %.not21 = icmp eq ptr %i.aj, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 312
  store ptr null, ptr %i.ak, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @zfree(ptr noundef nonnull %0) #26
  ret void
}

declare i64 @dictSdsHash(ptr noundef) #1

declare i32 @dictSdsKeyCompare(ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @dictSdsCaseHash(ptr noundef) #1

declare i32 @dictSdsKeyCaseCompare(ptr noundef, ptr noundef, ptr noundef) #1

declare void @dictSdsDestructor(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @initSentinelConfig() local_unnamed_addr #2 {
bb.a:
  store i32 26379, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1896), align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initSentinel() local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 8, !tbaa !72
  %i.a = tail call ptr @dictCreate(ptr noundef nonnull @instancesDictType) #26
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 8, !tbaa !75
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 80), align 8, !tbaa !76
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 68), align 4, !tbaa !77
  %i.b = tail call i64 @mstime() #26
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 88), align 8, !tbaa !78
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !79
  %i.c = tail call ptr @listCreate() #26
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 8, !tbaa !80
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 104), align 8, !tbaa !81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 112), align 8, !tbaa !82
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 120), align 8, !tbaa !83
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) @sentinel, i8 0, i64 41, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @sentinel, i64 136), i8 0, i64 24, i1 false)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8656), align 8, !tbaa !85
  ret void
}

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #1

declare i64 @mstime() local_unnamed_addr #1

declare ptr @listCreate() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @sentinelCheckConfigFile() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.9) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.e = tail call i32 @access(ptr noundef nonnull %i.a, i32 noundef 2) #26
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.h = icmp sgt i32 %i.g, 3
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.j = tail call ptr @__errno_location() #28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = tail call ptr @strerror(i32 noundef %i.k) #26
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef %i.i, ptr noundef %i.l) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.i:                                             ; preds = %bb.e
  ret void
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @sentinelIsRunning() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %1 = load <40 x i8>, ptr @sentinel, align 64
  %.fr = freeze <40 x i8> %1
  %2 = icmp ne <40 x i8> %.fr, zeroinitializer
  %3 = bitcast <40 x i1> %2 to i40
  %i.a = icmp eq i40 %3, 0
  br i1 %i.a, label %bb.b, label %sentinelFlushConfig.exit

bb.b:                                             ; preds = %bb.a
  tail call void @getRandomHexChars(ptr noundef nonnull @sentinel, i64 noundef 40) #26
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.d = tail call i32 @rewriteConfig(ptr noundef %i.c, i32 noundef 0) #26
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.e = icmp eq i32 %i.d, -1
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %sentinelFlushConfig.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #26
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.144, ptr noundef %i.j) #26
  br label %sentinelFlushConfig.exit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i32 %i.f, 2
  br i1 %i.k, label %sentinelFlushConfig.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.145) #26
  br label %sentinelFlushConfig.exit

sentinelFlushConfig.exit:                         ; preds = %bb.a, %bb.f, %bb.d
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.l = icmp sgt i32 %.pr, 2
  br i1 %i.l, label %sentinelFlushConfig.exit.thread, label %bb.g

bb.g:                                             ; preds = %sentinelFlushConfig.exit
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef nonnull @sentinel) #26
  br label %sentinelFlushConfig.exit.thread

sentinelFlushConfig.exit.thread:                  ; preds = %bb.c, %bb.e, %sentinelFlushConfig.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %0, ptr noundef %i.m) #26
  %i.n = call ptr @dictNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not3.i = icmp eq ptr %i.n, null
  br i1 %.not3.i, label %sentinelGenerateInitialMonitorEvents.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sentinelFlushConfig.exit.thread, %.lr.ph.i
  %i.o = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %sentinelFlushConfig.exit.thread ]
  %i.p = call ptr @dictGetVal(ptr noundef nonnull %i.o) #26 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.r = load i32, ptr %i.q, align 8, !tbaa !89
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.18, ptr noundef %i.p, ptr noundef nonnull @.str.19, i32 noundef %i.r)
  %i.s = call ptr @dictNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %sentinelGenerateInitialMonitorEvents.exit, label %.lr.ph.i, !llvm.loop !90

sentinelGenerateInitialMonitorEvents.exit:        ; preds = %.lr.ph.i, %sentinelFlushConfig.exit.thread
  call void @dictResetIterator(ptr noundef nonnull %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare void @getRandomHexChars(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @sentinelFlushConfig() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.c = tail call i32 @rewriteConfig(ptr noundef %i.b, i32 noundef 0) #26
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.d = icmp eq i32 %i.c, -1
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #26
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.144, ptr noundef %i.i) #26
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.e, 2
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.145) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelGenerateInitialMonitorEvents() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %0, ptr noundef %i.a) #26
  %i.b = call ptr @dictNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ]
  %i.d = call ptr @dictGetVal(ptr noundef nonnull %i.c) #26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.18, ptr noundef %i.d, ptr noundef nonnull @.str.19, i32 noundef %i.f)
  %i.g = call ptr @dictNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createSentinelAddr(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %or.cond = icmp ugt i32 %1, 65535
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #28
  store i32 22, ptr %i.b, align 4, !tbaa !9
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %.not = icmp eq i32 %i.c, 0
  %i.d = zext i1 %.not to i32
  %i.e = call i32 @anetResolve(ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 46, i32 noundef %i.d) #26
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.h = icmp sgt i32 %i.g, 3
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef %0) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp ne i32 %2, 0
  %or.cond3 = and i1 %i.k, %i.j
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.a, align 16, !tbaa !93
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = tail call ptr @__errno_location() #28
  store i32 2, ptr %i.l, align 4, !tbaa !9
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.c
  %i.m = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #29 ; 4 uses
  %i.n = call ptr @sdsnew(ptr noundef %0) #26
  store ptr %i.n, ptr %i.m, align 8, !tbaa !35
  %i.o = call ptr @sdsnew(ptr noundef nonnull %i.a) #26
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %1, ptr %i.q, align 8, !tbaa !94
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.m, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

declare i32 @anetResolve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1
end_hunk_1
begin_hunk_2_@sentinelHandleConfiguration:bb.a
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !189

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph14.i
  call void @dictResetIterator(ptr noundef nonnull %2) #26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %sentinelPropagateDownAfterPeriod.exit, label %.lr.ph14.i, !llvm.loop !190

sentinelPropagateDownAfterPeriod.exit:            ; preds = %._crit_edge.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.critedge

bb.j:                                             ; preds = %bb.f
  %i.ba = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.73) #30
  %i.bb = icmp eq i32 %i.ba, 0
  %or.cond8 = and i1 %i.y, %i.bb
  br i1 %or.cond8, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95
  %i.be = tail call ptr @sdsnew(ptr noundef %i.bd) #26 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.bg = tail call ptr @dictFetchValue(ptr noundef %i.bf, ptr noundef %i.be) #26 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.be) #26
  %.not246 = icmp eq ptr %i.bg, null
  br i1 %.not246, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !95
  %i.bj = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bi, ptr noundef null, i32 noundef 10) #26, !inline_history !205 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %sext260 = shl i64 %i.bj, 32
  %i.bl = ashr exact i64 %sext260, 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 296
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !175
  %i.bn = icmp slt i32 %i.bk, 1
  br i1 %i.bn, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.bo = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.74) #30
  %i.bp = icmp eq i32 %i.bo, 0
  %or.cond10 = and i1 %i.y, %i.bp
  br i1 %or.cond10, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !95
  %i.bs = tail call ptr @sdsnew(ptr noundef %i.br) #26 ; 2 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.bu = tail call ptr @dictFetchValue(ptr noundef %i.bt, ptr noundef %i.bs) #26 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.bs) #26
  %.not245 = icmp eq ptr %i.bu, null
  br i1 %.not245, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !95
  %i.bx = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 172
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !173
  br label %.critedge

bb.p:                                             ; preds = %bb.m
  %i.ca = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.75) #30
  %i.cb = icmp eq i32 %i.ca, 0
  %or.cond12 = and i1 %i.y, %i.cb
  br i1 %or.cond12, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !95
  %i.ce = tail call ptr @sdsnew(ptr noundef %i.cd) #26 ; 2 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.cg = tail call ptr @dictFetchValue(ptr noundef %i.cf, ptr noundef %i.ce) #26 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.ce) #26
  %.not244 = icmp eq ptr %i.cg, null
  br i1 %.not244, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95
  %i.cj = tail call i32 @access(ptr noundef %i.ci, i32 noundef 1) #26
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !95
  %i.cm = tail call ptr @sdsnew(ptr noundef %i.cl) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 320
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !27
  br label %.critedge

bb.t:                                             ; preds = %bb.p
  %i.co = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.77) #30
  %i.cp = icmp eq i32 %i.co, 0
  %or.cond14 = and i1 %i.y, %i.cp
  br i1 %or.cond14, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !95
  %i.cs = tail call ptr @sentinelGetMasterByName(ptr noundef %i.cr) ; 2 uses
  %.not243 = icmp eq ptr %i.cs, null
  br i1 %.not243, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !95
  %i.cv = tail call i32 @access(ptr noundef %i.cu, i32 noundef 1) #26
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !95
  %i.cy = tail call ptr @sdsnew(ptr noundef %i.cx) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 328
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !28
  br label %.critedge

bb.x:                                             ; preds = %bb.t
  %i.da = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.79) #30
  %i.db = icmp eq i32 %i.da, 0
  %or.cond16 = and i1 %i.y, %i.db
  br i1 %or.cond16, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !95
  %i.de = tail call ptr @sentinelGetMasterByName(ptr noundef %i.dd) ; 2 uses
  %.not242 = icmp eq ptr %i.de, null
  br i1 %.not242, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !95
  %i.dh = tail call ptr @sdsnew(ptr noundef %i.dg) #26
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !31
  br label %.critedge

bb.aa:                                            ; preds = %bb.x
  %i.dj = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.80) #30
  %i.dk = icmp eq i32 %i.dj, 0
  %or.cond18 = and i1 %i.y, %i.dk
  br i1 %or.cond18, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !95
  %i.dn = tail call ptr @sentinelGetMasterByName(ptr noundef %i.dm) ; 2 uses
  %.not241 = icmp eq ptr %i.dn, null
  br i1 %.not241, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !95
  %i.dq = tail call ptr @sdsnew(ptr noundef %i.dp) #26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 184
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !32
  br label %.critedge

bb.ad:                                            ; preds = %bb.aa
  %i.ds = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.5) #30
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = icmp eq i32 %1, 2                       ; 9 uses
  %or.cond20 = and i1 %i.du, %i.dt
  br i1 %or.cond20, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !95
  %i.dx = tail call i64 @__isoc23_strtoull(ptr noundef %i.dw, ptr noundef null, i32 noundef 10) #26 ; 2 uses
  %i.dy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  %i.dz = icmp ugt i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  store i64 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  br label %.critedge

bb.ag:                                            ; preds = %bb.ad
  %i.ea = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.6) #30
  %i.eb = icmp eq i32 %i.ea, 0
  %or.cond22 = and i1 %i.du, %i.eb
  br i1 %or.cond22, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !95 ; 2 uses
  %i.ee = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ed) #30
  %.not240 = icmp eq i64 %i.ee, 40
  br i1 %.not240, label %bb.ai, label %sentinelCheckCreateInstanceErrors.exit.thread

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(40) @sentinel, ptr noundef nonnull align 1 dereferenceable(40) %i.ed, i64 40, i1 false)
  br label %.critedge

bb.aj:                                            ; preds = %bb.ag
  %i.ef = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.82) #30
  %i.eg = icmp eq i32 %i.ef, 0
  %or.cond24 = and i1 %i.y, %i.eg
  br i1 %or.cond24, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !95
  %i.ej = tail call ptr @sentinelGetMasterByName(ptr noundef %i.ei) ; 2 uses
  %.not239 = icmp eq ptr %i.ej, null
  br i1 %.not239, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !95
  %i.em = tail call i64 @__isoc23_strtoull(ptr noundef %i.el, ptr noundef null, i32 noundef 10) #26 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i64 %i.em, ptr %i.en, align 8, !tbaa !206
  %i.eo = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  %i.ep = icmp ugt i64 %i.em, %i.eo
  br i1 %i.ep, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  store i64 %i.em, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 48), align 16, !tbaa !72
  br label %.critedge

bb.an:                                            ; preds = %bb.aj
  %i.eq = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.83) #30
  %i.er = icmp eq i32 %i.eq, 0
  %or.cond26 = and i1 %i.y, %i.er
  br i1 %or.cond26, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !95
  %i.eu = tail call ptr @sentinelGetMasterByName(ptr noundef %i.et) ; 2 uses
  %.not238 = icmp eq ptr %i.eu, null
  br i1 %.not238, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !95
  %i.ex = tail call i64 @__isoc23_strtoull(ptr noundef %i.ew, ptr noundef null, i32 noundef 10) #26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 256
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !207
  br label %.critedge

bb.aq:                                            ; preds = %bb.an
  %i.ez = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.84) #30
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fa = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.85) #30
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = icmp eq i32 %1, 4
  %or.cond28 = and i1 %i.fc, %i.fb
  br i1 %or.cond28, label %bb.at, label %bb.ax

bb.as:                                            ; preds = %bb.aq
  %.old27 = icmp eq i32 %1, 4
  br i1 %.old27, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !95
  %i.ff = tail call ptr @sentinelGetMasterByName(ptr noundef %i.fe) ; 3 uses
  %.not237 = icmp eq ptr %i.ff, null
  br i1 %.not237, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !95
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !95
  %i.fk = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fj, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !89
  %i.fo = tail call ptr @createSentinelRedisInstance(ptr noundef null, i32 noundef 2, ptr noundef %i.fh, i32 noundef %i.fl, i32 noundef %i.fn, ptr noundef nonnull %i.ff)
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.fq = tail call ptr @__errno_location() #28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !9
  switch i32 %i.fr, label %bb.be [
    i32 16, label %bb.aw
    i32 2, label %sentinelCheckCreateInstanceErrors.exit.thread
    i32 22, label %bb.bd
  ]

bb.aw:                                            ; preds = %bb.av
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %i.fs = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.86) #30
  %.not227 = icmp eq i32 %i.fs, 0
  %i.ft = and i32 %1, -2
  %or.cond31 = icmp eq i32 %i.ft, 4
  %or.cond248 = and i1 %or.cond31, %.not227
  br i1 %or.cond248, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.e, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !95
  %i.fw = tail call ptr @sentinelGetMasterByName(ptr noundef %i.fv) ; 3 uses
  %.not228 = icmp eq ptr %i.fw, null
  br i1 %.not228, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !95
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !95
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !95
  %i.gd = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.gc, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 168
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !89
  %i.gh = tail call ptr @createSentinelRedisInstance(ptr noundef %i.fy, i32 noundef 4, ptr noundef %i.ga, i32 noundef %i.ge, i32 noundef %i.gg, ptr noundef nonnull %i.fw) ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.gj = tail call ptr @__errno_location() #28
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !9
  switch i32 %i.gk, label %bb.be [
    i32 16, label %bb.bc
    i32 2, label %sentinelCheckCreateInstanceErrors.exit.thread
    i32 22, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.bd:                                            ; preds = %bb.d, %bb.av, %bb.bb
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.be:                                            ; preds = %bb.d, %bb.av, %bb.bb
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.bf:                                            ; preds = %bb.ba
  %i.gl = load ptr, ptr %i.fx, align 8, !tbaa !95
  %i.gm = tail call ptr @sdsnew(ptr noundef %i.gl) #26
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !26
  %i.go = tail call i32 @sentinelTryConnectionSharing(ptr noundef nonnull %i.gh) ; 0 uses
  br label %.critedge

bb.bg:                                            ; preds = %bb.ax
  %i.gp = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.87) #30
  %i.gq = icmp eq i32 %i.gp, 0
  %i.gr = icmp eq i32 %1, 4
  %or.cond34 = and i1 %i.gr, %i.gq
  br i1 %or.cond34, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !95
  %i.gu = tail call ptr @sentinelGetMasterByName(ptr noundef %i.gt) ; 2 uses
  %.not235 = icmp eq ptr %i.gu, null
  br i1 %.not235, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !95
  %i.gx = tail call ptr @sdsnew(ptr noundef %i.gw) #26 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !95
  %i.ha = tail call ptr @sdsnew(ptr noundef %i.gz) #26 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 120
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !38
  %i.hd = tail call i32 @dictAdd(ptr noundef %i.hc, ptr noundef %i.gx, ptr noundef %i.ha) #26
  %.not236 = icmp eq i32 %i.hd, 0
  br i1 %.not236, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @sdsfree(ptr noundef %i.gx) #26
  tail call void @sdsfree(ptr noundef %i.ha) #26
  br label %sentinelCheckCreateInstanceErrors.exit.thread

bb.bk:                                            ; preds = %bb.bg
  %i.he = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str) #30
  %i.hf = icmp eq i32 %i.he, 0
  %or.cond37 = and i1 %i.du, %i.hf
  br i1 %or.cond37, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !95 ; 2 uses
  %char0233 = load i8, ptr %i.hh, align 1
  %.not234 = icmp eq i8 %char0233, 0
  br i1 %.not234, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hi = tail call ptr @sdsnew(ptr noundef nonnull %i.hh) #26
  store ptr %i.hi, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 104), align 8, !tbaa !81
  br label %.critedge

bb.bn:                                            ; preds = %bb.bk
  %i.hj = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.1) #30
  %i.hk = icmp eq i32 %i.hj, 0
  %or.cond40 = and i1 %i.du, %i.hk
  br i1 %or.cond40, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !95
  %i.hn = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.hm, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.ho = trunc i64 %i.hn to i32
  store i32 %i.ho, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 112), align 16, !tbaa !82
  br label %.critedge

bb.bp:                                            ; preds = %bb.bn
  %i.hp = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.2) #30
  %i.hq = icmp eq i32 %i.hp, 0
  %or.cond43 = and i1 %i.du, %i.hq
  br i1 %or.cond43, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !95
  %i.ht = tail call i32 @yesnotoi(ptr noundef %i.hs) #26 ; 2 uses
  store i32 %i.ht, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 64, !tbaa !84
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge

bb.br:                                            ; preds = %bb.bp
  %i.hv = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.3) #30
  %i.hw = icmp eq i32 %i.hv, 0
  %or.cond46 = and i1 %i.du, %i.hw
  br i1 %or.cond46, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !95 ; 2 uses
  %char0231 = load i8, ptr %i.hy, align 1
  %.not232 = icmp eq i8 %char0231, 0
  br i1 %.not232, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hz = tail call ptr @sdsnew(ptr noundef nonnull %i.hy) #26
  store ptr %i.hz, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 144), align 16, !tbaa !208
  br label %.critedge

bb.bu:                                            ; preds = %bb.br
  %i.ia = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.4) #30
  %i.ib = icmp eq i32 %i.ia, 0
  %or.cond49 = and i1 %i.du, %i.ib
  br i1 %or.cond49, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !95 ; 2 uses
  %char0 = load i8, ptr %i.id, align 1
  %.not230 = icmp eq i8 %char0, 0
  br i1 %.not230, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ie = tail call ptr @sdsnew(ptr noundef nonnull %i.id) #26
  store ptr %i.ie, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 136), align 8, !tbaa !209
  br label %.critedge

bb.bx:                                            ; preds = %bb.bu
  %i.if = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.7) #30
  %i.ig = icmp eq i32 %i.if, 0
  %or.cond52 = and i1 %i.du, %i.ig
  br i1 %or.cond52, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !95
  %i.ij = tail call i32 @yesnotoi(ptr noundef %i.ii) #26 ; 2 uses
  store i32 %i.ij, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %i.ik = icmp eq i32 %i.ij, -1
  br i1 %i.ik, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge

bb.bz:                                            ; preds = %bb.bx
  %i.il = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.8) #30
  %i.im = icmp eq i32 %i.il, 0
  %or.cond55 = and i1 %i.du, %i.im
  br i1 %or.cond55, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !95
  %i.ip = tail call i32 @yesnotoi(ptr noundef %i.io) #26 ; 2 uses
  store i32 %i.ip, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %i.iq = icmp eq i32 %i.ip, -1
  br i1 %i.iq, label %sentinelCheckCreateInstanceErrors.exit.thread, label %.critedge

bb.cb:                                            ; preds = %bb.bz
  %i.ir = tail call i32 @strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.92) #30
  %i.is = icmp eq i32 %i.ir, 0
  %or.cond58 = and i1 %i.y, %i.is
  br i1 %or.cond58, label %bb.cc, label %sentinelCheckCreateInstanceErrors.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !95
  %i.iv = tail call ptr @sentinelGetMasterByName(ptr noundef %i.iu) ; 2 uses
  %.not229 = icmp eq ptr %i.iv, null
  br i1 %.not229, label %sentinelCheckCreateInstanceErrors.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !95
  %i.iy = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ix, ptr noundef null, i32 noundef 10) #26, !inline_history !205 ; 2 uses
  %sext = shl i64 %i.iy, 32
  %i.iz = ashr exact i64 %sext, 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !166
  %i.jb = and i64 %i.iy, 2147483648
  %.not259 = icmp eq i64 %i.jb, 0
  br i1 %.not259, label %.critedge, label %sentinelCheckCreateInstanceErrors.exit.thread

.critedge:                                        ; preds = %bb.bf, %bb.ay, %bb.au, %bb.c, %bb.bi, %bb.ae, %bb.af, %sentinelPropagateDownAfterPeriod.exit, %bb.o, %bb.w, %bb.ac, %bb.ai, %bb.ap, %bb.bm, %bb.bl, %bb.bq, %bb.bw, %bb.bv, %bb.ca, %bb.cd, %bb.by, %bb.bs, %bb.bt, %bb.bo, %bb.al, %bb.am, %bb.z, %bb.s, %bb.l
  br label %sentinelCheckCreateInstanceErrors.exit.thread

sentinelCheckCreateInstanceErrors.exit.thread:    ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.aw, %bb.av, %bb.at, %bb.e, %bb.d, %bb.b, %bb.bj, %bb.cb, %bb.cd, %bb.cc, %bb.ca, %bb.by, %bb.bq, %bb.bh, %bb.ao, %bb.ak, %bb.ah, %bb.ab, %bb.y, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.l, %bb.k, %bb.h, %bb.g, %.critedge
  %.4 = phi ptr [ null, %.critedge ], [ @.str.94, %bb.cb ], [ @.str.71, %bb.g ], [ @.str.71, %bb.at ], [ @.str.71, %bb.k ], [ @.str.72, %bb.h ], [ @.str.72, %bb.l ], [ @.str.71, %bb.q ], [ @.str.71, %bb.n ], [ @.str.71, %bb.u ], [ @.str.76, %bb.r ], [ @.str.78, %bb.v ], [ @.str.71, %bb.y ], [ @.str.71, %bb.ab ], [ @.str.81, %bb.ah ], [ @.str.71, %bb.ak ], [ @.str.69, %bb.b ], [ @.str.88, %bb.bj ], [ @.str.71, %bb.ao ], [ @.str.71, %bb.bh ], [ @.str.89, %bb.bq ], [ @.str.90, %bb.by ], [ @.str.71, %bb.cc ], [ @.str.91, %bb.ca ], [ @.str.93, %bb.cd ], [ @.str.60, %bb.d ], [ @.str.56, %bb.e ], [ @.str.71, %bb.az ], [ @.str.62, %bb.be ], [ @.str.60, %bb.av ], [ @.str.57, %bb.aw ], [ @.str.61, %bb.bd ], [ @.str.60, %bb.bb ], [ @.str.58, %bb.bc ]
  ret ptr %.4
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @yesnotoi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @rewriteConfigSentinelOption(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  %2 = alloca %struct.dictIterator, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = tail call ptr @sdsempty() #26
  %i.b = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.95, ptr noundef nonnull @sentinel) #26
  %i.c = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %i.b, i32 noundef 1) #26 ; 0 uses
  %i.d = tail call ptr @sdsempty() #26
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 64, !tbaa !84
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, ptr @.str.99, ptr @.str.98
  %i.g = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.d, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.f) #26
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 64, !tbaa !84
  %i.i = icmp ne i32 %i.h, 1
  %i.j = zext i1 %i.i to i32
  %i.k = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef %i.g, i32 noundef %i.j) #26 ; 0 uses
  %i.l = tail call ptr @sdsempty() #26
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %.not128 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not128, ptr @.str.99, ptr @.str.98
  %i.o = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.l, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.n) #26
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 152), align 8, !tbaa !92
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef %i.o, i32 noundef %i.r) #26 ; 0 uses
  %i.t = tail call ptr @sdsempty() #26
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not129 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not129, ptr @.str.99, ptr @.str.98
  %i.w = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.t, ptr noundef nonnull @.str.103, ptr noundef nonnull %i.v) #26
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = tail call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %i.w, i32 noundef %i.z) #26 ; 0 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef %i.ab) #26
  %i.ac = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not130168 = icmp eq ptr %i.ac, null
  br i1 %.not130168, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %bb.a, %._crit_edge167
  %i.ad = phi ptr [ %i.gb, %._crit_edge167 ], [ %i.ac, %bb.a ]
  %i.ae = call ptr @dictGetVal(ptr noundef nonnull %i.ad) #26 ; 20 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !39
  %i.ag = and i32 %i.af, 64
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph170
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 312
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %.not7.i = icmp eq ptr %i.ai, null
  br i1 %.not7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !180
  %i.al = icmp sgt i32 %i.ak, 4
  br i1 %i.al, label %sentinelGetCurrentMasterAddress.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph170
  br label %sentinelGetCurrentMasterAddress.exit

sentinelGetCurrentMasterAddress.exit:             ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.ae, %bb.d ], [ %i.ai, %bb.c ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !34 ; 4 uses
  %i.am = call ptr @sdsempty() #26
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 14 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i147 = icmp eq i32 %i.ap, 0
  %.in.idx.i = select i1 %.not.i147, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.in.idx.i
  %i.aq = load ptr, ptr %.in.i, align 8, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.au = load i32, ptr %i.at, align 8, !tbaa !89
  %i.av = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.am, ptr noundef nonnull @.str.105, ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au) #26
  %i.aw = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.106, ptr noundef %i.av, i32 noundef 1) #26 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !165
  %i.az = load i64, ptr @sentinel_default_down_after, align 8, !tbaa !115
  %.not135 = icmp eq i64 %i.ay, %i.az
  br i1 %.not135, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sentinelGetCurrentMasterAddress.exit
  %i.ba = call ptr @sdsempty() #26
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !165
  %i.bd = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.107, ptr noundef %i.bb, i64 noundef %i.bc) #26
  %i.be = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef %i.bd, i32 noundef 1) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %sentinelGetCurrentMasterAddress.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 296 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !175
  %i.bh = load i64, ptr @sentinel_default_failover_timeout, align 8, !tbaa !115
  %.not136 = icmp eq i64 %i.bg, %i.bh
  br i1 %.not136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = call ptr @sdsempty() #26
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.bk = load i64, ptr %i.bf, align 8, !tbaa !175
  %i.bl = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.109, ptr noundef %i.bj, i64 noundef %i.bk) #26
  %i.bm = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef %i.bl, i32 noundef 1) #26 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 172 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !173
  %.not137 = icmp eq i32 %i.bo, 1
  br i1 %.not137, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = call ptr @sdsempty() #26
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !173
  %i.bs = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.111, ptr noundef %i.bq, i32 noundef %i.br) #26
  %i.bt = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef %i.bs, i32 noundef 1) #26 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 320 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  %.not138 = icmp eq ptr %i.bv, null
  br i1 %.not138, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = call ptr @sdsempty() #26
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bz = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.113, ptr noundef %i.bx, ptr noundef %i.by) #26
  %i.ca = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.114, ptr noundef %i.bz, i32 noundef 1) #26 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 328 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28
  %.not139 = icmp eq ptr %i.cc, null
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = call ptr @sdsempty() #26
  %i.ce = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.cg = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.115, ptr noundef %i.ce, ptr noundef %i.cf) #26
  %i.ch = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.116, ptr noundef %i.cg, i32 noundef 1) #26 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  %.not140 = icmp eq ptr %i.cj, null
  br i1 %.not140, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = call ptr @sdsempty() #26
  %i.cl = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cn = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.117, ptr noundef %i.cl, ptr noundef %i.cm) #26
  %i.co = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.118, ptr noundef %i.cn, i32 noundef 1) #26 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 184 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !32
  %.not141 = icmp eq ptr %i.cq, null
  br i1 %.not141, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call ptr @sdsempty() #26
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cu = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.119, ptr noundef %i.cs, ptr noundef %i.ct) #26
  %i.cv = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.120, ptr noundef %i.cu, i32 noundef 1) #26 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !166
  %.not142 = icmp eq i64 %i.cx, 0
  br i1 %.not142, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = call ptr @sdsempty() #26
  %i.cz = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !166
  %i.db = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.121, ptr noundef %i.cz, i64 noundef %i.da) #26
  %i.dc = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.122, ptr noundef %i.db, i32 noundef 1) #26 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dd = call ptr @sdsempty() #26
  %i.de = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !206
  %i.dh = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.123, ptr noundef %i.de, i64 noundef %i.dg) #26
  %i.di = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.124, ptr noundef %i.dh, i32 noundef 1) #26 ; 0 uses
  %i.dj = call ptr @sdsempty() #26
  %i.dk = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !207
  %i.dn = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.125, ptr noundef %i.dk, i64 noundef %i.dm) #26
  %i.do = call i32 @rewriteConfigRewriteLine(ptr noundef %0, ptr noundef nonnull @.str.126, ptr noundef %i.dn, i32 noundef 1) #26 ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !23
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef %i.dq) #26
  %i.dr = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not143159 = icmp eq ptr %i.dr, null
  br i1 %.not143159, label %._crit_edge, label %.lr.ph
end_hunk_2
begin_hunk_3_@sentinelRefreshInstanceInfo:bb.a
  br label %sdslen.exit273

sdslen.exit273:                                   ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce
  %.0.i272 = phi i64 [ %i.kh, %bb.ce ], [ %i.jw, %bb.ca ], [ %i.jz, %bb.cb ], [ %i.kc, %bb.cc ], [ %i.kf, %bb.cd ]
  %i.ki = icmp ugt i64 %.0.i272, 14
  br i1 %i.ki, label %bb.cf, label %sdslen.exit273.thread

bb.cf:                                            ; preds = %sdslen.exit273
  %i.kj = load i64, ptr %i.z, align 1
  %i.kk = xor i64 %i.kj, 8246195807097810035
  %i.kl = getelementptr i8, ptr %i.z, i64 7
  %i.km = load i64, ptr %i.kl, align 1
  %i.kn = xor i64 %i.km, 4213526922622101874
  %i.ko = or i64 %i.kk, %i.kn
  %i.kp = icmp ne i64 %i.ko, 0
  %i.kq = zext i1 %i.kp to i32
  %.not244 = icmp eq i32 %i.kq, 0
  br i1 %.not244, label %bb.cg, label %sdslen.exit273.thread

bb.cg:                                            ; preds = %bb.cf
  %i.kr = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.ks = call i64 @__isoc23_strtol(ptr noundef nonnull %i.kr, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.kt = trunc i64 %i.ks to i32
  store i32 %i.kt, ptr %i.v, align 8, !tbaa !167
  %.val.i274.pre = load i8, ptr %i.aa, align 1, !tbaa !93
  br label %sdslen.exit273.thread

sdslen.exit273.thread:                            ; preds = %sdslen.exit270.thread, %bb.cg, %bb.cf, %sdslen.exit273
  %.val.i274 = phi i8 [ %.val.i271, %sdslen.exit270.thread ], [ %.val.i274.pre, %bb.cg ], [ %.val.i271, %bb.cf ], [ %.val.i271, %sdslen.exit273 ] ; 5 uses
  %i.ku = and i8 %.val.i274, 7
  switch i8 %i.ku, label %sdslen.exit276.thread [
    i8 0, label %bb.ch
    i8 1, label %bb.ci
    i8 2, label %bb.cj
    i8 3, label %bb.ck
    i8 4, label %bb.cl
  ]

bb.ch:                                            ; preds = %sdslen.exit273.thread
  %i.kv = lshr i8 %.val.i274, 3
  %i.kw = zext nneg i8 %i.kv to i64
  br label %sdslen.exit276

bb.ci:                                            ; preds = %sdslen.exit273.thread
  %i.kx = getelementptr inbounds i8, ptr %i.z, i64 -3
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !93
  %i.kz = zext i8 %i.ky to i64
  br label %sdslen.exit276

bb.cj:                                            ; preds = %sdslen.exit273.thread
  %i.la = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.lb = load i16, ptr %i.la, align 1, !tbaa !214
  %i.lc = zext i16 %i.lb to i64
  br label %sdslen.exit276

bb.ck:                                            ; preds = %sdslen.exit273.thread
  %i.ld = getelementptr inbounds i8, ptr %i.z, i64 -9
  %i.le = load i32, ptr %i.ld, align 1, !tbaa !9
  %i.lf = zext i32 %i.le to i64
  br label %sdslen.exit276

bb.cl:                                            ; preds = %sdslen.exit273.thread
  %i.lg = getelementptr inbounds i8, ptr %i.z, i64 -17
  %i.lh = load i64, ptr %i.lg, align 1, !tbaa !182
  br label %sdslen.exit276

sdslen.exit276:                                   ; preds = %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl
  %.0.i275 = phi i64 [ %i.lh, %bb.cl ], [ %i.kw, %bb.ch ], [ %i.kz, %bb.ci ], [ %i.lc, %bb.cj ], [ %i.lf, %bb.ck ]
  %i.li = icmp ugt i64 %.0.i275, 17
  br i1 %i.li, label %bb.cm, label %sdslen.exit276.thread

bb.cm:                                            ; preds = %sdslen.exit276
  %i.lj = load i128, ptr %i.z, align 1
  %i.lk = xor i128 %i.lj, 134851218634528353397869385939048033395
  %i.ll = getelementptr i8, ptr %i.z, i64 16
  %i.lm = load i16, ptr %i.ll, align 1
  %i.ln = zext i16 %i.lm to i128
  %i.lo = xor i128 %i.ln, 14964
  %i.lp = or i128 %i.lk, %i.lo
  %i.lq = icmp ne i128 %i.lp, 0
  %i.lr = zext i1 %i.lq to i32
  %.not246 = icmp eq i32 %i.lr, 0
  br i1 %.not246, label %bb.cn, label %sdslen.exit276.thread

bb.cn:                                            ; preds = %bb.cm
  %i.ls = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.lt = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.ls, ptr noundef null, i32 noundef 10) #26
  store i64 %i.lt, ptr %i.w, align 8, !tbaa !172
  %.val.i277.pre = load i8, ptr %i.aa, align 1, !tbaa !93
  br label %sdslen.exit276.thread

sdslen.exit276.thread:                            ; preds = %sdslen.exit273.thread, %bb.cn, %bb.cm, %sdslen.exit276
  %.val.i277 = phi i8 [ %.val.i274, %sdslen.exit273.thread ], [ %.val.i277.pre, %bb.cn ], [ %.val.i274, %bb.cm ], [ %.val.i274, %sdslen.exit276 ] ; 2 uses
  %i.lu = and i8 %.val.i277, 7
  switch i8 %i.lu, label %.critedge [
    i8 0, label %bb.co
    i8 1, label %bb.cp
    i8 2, label %bb.cq
    i8 3, label %bb.cr
    i8 4, label %bb.cs
  ]

bb.co:                                            ; preds = %sdslen.exit276.thread
  %i.lv = lshr i8 %.val.i277, 3
  %i.lw = zext nneg i8 %i.lv to i64
  br label %sdslen.exit279

bb.cp:                                            ; preds = %sdslen.exit276.thread
  %i.lx = getelementptr inbounds i8, ptr %i.z, i64 -3
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !93
  %i.lz = zext i8 %i.ly to i64
  br label %sdslen.exit279

bb.cq:                                            ; preds = %sdslen.exit276.thread
  %i.ma = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.mb = load i16, ptr %i.ma, align 1, !tbaa !214
  %i.mc = zext i16 %i.mb to i64
  br label %sdslen.exit279

bb.cr:                                            ; preds = %sdslen.exit276.thread
  %i.md = getelementptr inbounds i8, ptr %i.z, i64 -9
  %i.me = load i32, ptr %i.md, align 1, !tbaa !9
  %i.mf = zext i32 %i.me to i64
  br label %sdslen.exit279

bb.cs:                                            ; preds = %sdslen.exit276.thread
  %i.mg = getelementptr inbounds i8, ptr %i.z, i64 -17
  %i.mh = load i64, ptr %i.mg, align 1, !tbaa !182
  br label %sdslen.exit279

sdslen.exit279:                                   ; preds = %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs
  %.0.i278 = phi i64 [ %i.mh, %bb.cs ], [ %i.lw, %bb.co ], [ %i.lz, %bb.cp ], [ %i.mc, %bb.cq ], [ %i.mf, %bb.cr ]
  %i.mi = icmp ugt i64 %.0.i278, 17
  br i1 %i.mi, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %sdslen.exit279
  %i.mj = load i128, ptr %i.z, align 1
  %i.mk = xor i128 %i.mj, 134768305332509206138030251326445741426
  %i.ml = getelementptr i8, ptr %i.z, i64 16
  %i.mm = load i16, ptr %i.ml, align 1
  %i.mn = zext i16 %i.mm to i128
  %i.mo = xor i128 %i.mn, 14948
  %i.mp = or i128 %i.mk, %i.mo
  %i.mq = icmp ne i128 %i.mp, 0
  %i.mr = zext i1 %i.mq to i32
  %.not248 = icmp eq i32 %i.mr, 0
  br i1 %.not248, label %bb.cu, label %.critedge

bb.cu:                                            ; preds = %bb.ct
  %i.ms = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.mt = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ms, ptr noundef null, i32 noundef 10) #26, !inline_history !205
  %i.mu = trunc i64 %i.mt to i32
  store i32 %i.mu, ptr %i.x, align 4, !tbaa !168
  br label %.critedge

.critedge:                                        ; preds = %bb.bb, %sdslen.exit276.thread, %bb.av, %bb.z, %bb.x, %bb.w, %bb.y, %sdslen.exit261.thread, %bb.cu, %bb.ct, %sdslen.exit279
  %.2 = phi i32 [ %.0182323, %sdslen.exit261.thread ], [ 2, %sdslen.exit279 ], [ 2, %bb.ct ], [ 2, %bb.cu ], [ %.0182323, %bb.y ], [ %.0182323, %bb.w ], [ %.0182323, %bb.x ], [ %.0182323, %bb.z ], [ 1, %bb.av ], [ 2, %sdslen.exit276.thread ], [ %.0182323, %bb.bb ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mv = load i32, ptr %i.e, align 4, !tbaa !9
  %i.mw = sext i32 %i.mv to i64
  %i.mx = icmp slt i64 %indvars.iv.next, %i.mw
  br i1 %i.mx, label %bb.b, label %._crit_edge, !llvm.loop !253

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0182.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %.critedge ] ; 7 uses
  %i.my = call i64 @mstime() #26
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !174
  %i.na = load i32, ptr %i.e, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef %i.k, i32 noundef %i.na) #26
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !176
  %.not = icmp eq i32 %.0182.lcssa, %i.nc
  br i1 %.not, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge
  %i.nd = call i64 @mstime() #26
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !177
  store i32 %.0182.lcssa, ptr %i.nb, align 8, !tbaa !176
  %i.nf = icmp eq i32 %.0182.lcssa, 2
  br i1 %i.nf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ng = call i64 @mstime() #26
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.ng, ptr %i.nh, align 8, !tbaa !178
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ni = load i32, ptr %0, align 8, !tbaa !39
  %i.nj = and i32 %i.ni, 3
  %i.nk = icmp eq i32 %i.nj, %.0182.lcssa
  %i.nl = select i1 %i.nk, ptr @.str.175, ptr @.str.176
  %i.nm = icmp eq i32 %.0182.lcssa, 1
  %i.nn = select i1 %i.nm, ptr @.str.48, ptr @.str.49
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 1, ptr noundef nonnull %i.nl, ptr noundef nonnull %0, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.nn)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %._crit_edge
  %i.no = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 64, !tbaa !75
  %.not198 = icmp eq i32 %i.no, 0
  br i1 %.not198, label %bb.cz, label %bb.eg

bb.cz:                                            ; preds = %bb.cy
  %i.np = load i32, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.nq = icmp eq i32 %.0182.lcssa, 2             ; 2 uses
  %i.nr = and i32 %i.np, 2
  %i.ns = icmp ne i32 %i.nr, 0                    ; 2 uses
  %i.nt = icmp eq i32 %.0182.lcssa, 1
  %or.cond3 = select i1 %i.ns, i1 %i.nt, i1 false
  br i1 %or.cond3, label %bb.da, label %bb.dq

bb.da:                                            ; preds = %bb.cz
  %i.nu = and i32 %i.np, 128
  %.not199 = icmp eq i32 %i.nu, 0
  br i1 %.not199, label %bb.dl, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !40 ; 4 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !39
  %i.ny = and i32 %i.nx, 64
  %.not200 = icmp eq i32 %i.ny, 0
  br i1 %.not200, label %.thread314, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 272 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !180
  %i.ob = icmp eq i32 %i.oa, 4
  br i1 %i.ob, label %bb.dd, label %.thread314

bb.dd:                                            ; preds = %bb.dc
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nw, i64 264
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !254
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  store i64 %i.od, ptr %i.oe, align 8, !tbaa !206
  store i32 5, ptr %i.nz, align 8, !tbaa !180
  %i.of = call i64 @mstime() #26
  %i.og = load ptr, ptr %i.nv, align 8, !tbaa !40
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 280
  store i64 %i.of, ptr %i.oh, align 8, !tbaa !255
  %i.oi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.oj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.ok = call i32 @rewriteConfig(ptr noundef %i.oj, i32 noundef 0) #26
  store i32 %i.oi, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.ol = icmp eq i32 %i.ok, -1
  %i.om = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87 ; 2 uses
  br i1 %i.ol, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.on = icmp sgt i32 %i.om, 3
  br i1 %i.on, label %sentinelFlushConfig.exit281, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.oo = tail call ptr @__errno_location() #28
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !9
  %i.oq = call ptr @strerror(i32 noundef %i.op) #26
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.144, ptr noundef %i.oq) #26
  br label %sentinelFlushConfig.exit281

bb.dg:                                            ; preds = %bb.dd
  %i.or = icmp sgt i32 %i.om, 2
  br i1 %i.or, label %sentinelFlushConfig.exit281, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.145) #26
  br label %sentinelFlushConfig.exit281

sentinelFlushConfig.exit281:                      ; preds = %bb.de, %bb.df, %bb.dg, %bb.dh
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.178, ptr noundef nonnull %0, ptr noundef nonnull @.str.54)
  %i.os = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 120), align 8, !tbaa !83
  %i.ot = and i64 %i.os, 2
  %.not204 = icmp eq i64 %i.ot, 0
  br i1 %.not204, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %sentinelFlushConfig.exit281
  call void @sentinelSimFailureCrash()
  unreachable

bb.dj:                                            ; preds = %sentinelFlushConfig.exit281
  %i.ou = load ptr, ptr %i.nv, align 8, !tbaa !40
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.179, ptr noundef %i.ou, ptr noundef nonnull @.str.54)
  %i.ov = load ptr, ptr %i.nv, align 8, !tbaa !40 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !34 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 328 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !28
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %sentinelCallClientReconfScript.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !94
  %i.pf = sext i32 %i.pe to i64
  %i.pg = call i32 @ll2string(ptr noundef nonnull %i.c, i64 noundef 32, i64 noundef %i.pf) #26 ; 0 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !94
  %i.pj = sext i32 %i.pi to i64
  %i.pk = call i32 @ll2string(ptr noundef nonnull %i.d, i64 noundef 32, i64 noundef %i.pj) #26 ; 0 uses
  %i.pl = load ptr, ptr %i.pa, align 8, !tbaa !28
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !25
  %i.po = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.po, 0
  %.in.idx.i.i = select i1 %.not.i.i, i64 8, i64 0 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.in.idx.i.i
  %i.pp = load ptr, ptr %.in.i.i, align 8, !tbaa !95
  %.in.i10.i = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.in.idx.i.i
  %i.pq = load ptr, ptr %.in.i10.i, align 8, !tbaa !95
  call void (ptr, ...) @sentinelScheduleScriptExecution(ptr noundef %i.pl, ptr noundef %i.pn, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.180, ptr noundef %i.pp, ptr noundef nonnull %i.c, ptr noundef %i.pq, ptr noundef nonnull %i.d, ptr noundef null)
  %.pre332 = load ptr, ptr %i.nv, align 8, !tbaa !40
  br label %sentinelCallClientReconfScript.exit

sentinelCallClientReconfScript.exit:              ; preds = %bb.dj, %bb.dk
  %i.pr = phi ptr [ %i.ov, %bb.dj ], [ %.pre332, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ps = call i32 @sentinelForceHelloUpdateForMaster(ptr noundef %i.pr) ; 0 uses
  br label %.thread314

bb.dl:                                            ; preds = %bb.da
  %i.pt = load i64, ptr @sentinel_publish_period, align 8, !tbaa !115
  %i.pu = shl nsw i64 %i.pt, 2                    ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !40 ; 3 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !39 ; 2 uses
  %i.py = and i32 %i.px, 1
  %.not.i = icmp eq i32 %i.py, 0
  br i1 %.not.i, label %.thread314, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 128
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !176
  %i.qb = icmp eq i32 %i.qa, 1
  %i.qc = and i32 %i.px, 24
  %i.qd = icmp eq i32 %i.qc, 0
  %or.cond.i = and i1 %i.qd, %i.qb
  br i1 %or.cond.i, label %sentinelMasterLooksSane.exit, label %.thread314

sentinelMasterLooksSane.exit:                     ; preds = %bb.dm
  %i.qe = call i64 @mstime() #26
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pw, i64 112
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !174
  %i.qh = sub nsw i64 %i.qe, %i.qg
  %i.qi = load i64, ptr @sentinel_info_period, align 8, !tbaa !115
  %i.qj = shl nuw nsw i64 %i.qi, 1
  %.not321 = icmp slt i64 %i.qh, %i.qj
  br i1 %.not321, label %bb.dn, label %.thread314

bb.dn:                                            ; preds = %sentinelMasterLooksSane.exit
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !186
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !187
  %spec.select.i = call i64 @llvm.smax.i64(i64 %i.qn, i64 %i.ql) ; 2 uses
  %i.qo = icmp eq i64 %spec.select.i, 0
  br i1 %i.qo, label %sentinelRedisInstanceNoDownFor.exit.thread, label %sentinelRedisInstanceNoDownFor.exit

sentinelRedisInstanceNoDownFor.exit:              ; preds = %bb.dn
  %i.qp = call i64 @mstime() #26
  %i.qq = sub nsw i64 %i.qp, %spec.select.i
  %.not322 = icmp sgt i64 %i.qq, %i.pu
  br i1 %.not322, label %sentinelRedisInstanceNoDownFor.exit.thread, label %.thread314

sentinelRedisInstanceNoDownFor.exit.thread:       ; preds = %bb.dn, %sentinelRedisInstanceNoDownFor.exit
  %i.qr = call i64 @mstime() #26
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !177
  %i.qu = sub nsw i64 %i.qr, %i.qt
  %i.qv = icmp sgt i64 %i.qu, %i.pu
  br i1 %i.qv, label %bb.do, label %.thread314

bb.do:                                            ; preds = %sentinelRedisInstanceNoDownFor.exit.thread
  %i.qw = load ptr, ptr %i.pv, align 8, !tbaa !40
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !34
  %i.qz = call i32 @sentinelSendSlaveOf(ptr noundef nonnull %0, ptr noundef %i.qy)
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.dp, label %.thread314

bb.dp:                                            ; preds = %bb.do
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 2, ptr noundef nonnull @.str.181, ptr noundef nonnull %0, ptr noundef nonnull @.str.54)
  br label %.thread314

bb.dq:                                            ; preds = %bb.cz
  %or.cond5 = select i1 %i.ns, i1 %i.nq, i1 false
  br i1 %or.cond5, label %bb.dr, label %.thread314

bb.dr:                                            ; preds = %bb.dq
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !170
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !40 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !34 ; 2 uses
end_hunk_3
begin_hunk_4_@sentinelIsQuorumReachable:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %.116
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [47 x ptr], align 16              ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca [46 x i8], align 16               ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.dictType, align 8           ; 5 uses
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %3 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !259  ; 15 uses
  %i.k = icmp ne i32 %i.j, 2                      ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !272 ; 12 uses
  %.phi.trans.insert372 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre373 = load ptr, ptr %.phi.trans.insert372, align 8, !tbaa !273
  %.phi.trans.insert374 = getelementptr inbounds nuw i8, ptr %.pre373, i64 8
  %.pre375 = load ptr, ptr %.phi.trans.insert374, align 8, !tbaa !274 ; 23 uses
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.302) #30
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %.thread397

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(376) %i.a, ptr noundef nonnull align 16 dereferenceable(376) @__const.sentinelCommand.help, i64 376, i1 false)
  call void @addReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.m = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.349) #30
  %.not237 = icmp eq i32 %i.m, 0
  br i1 %.not237, label %.thread402, label %bb.e

.thread397:                                       ; preds = %bb.b
  %i.n = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.349) #30
  %.not237398 = icmp eq i32 %i.n, 0
  br i1 %.not237398, label %.thread399, label %.thread400

.thread399:                                       ; preds = %.thread397
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  tail call void @addReplyDictOfRedisInstances(ptr noundef nonnull %0, ptr noundef %i.o)
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.48) #30
  %.not239 = icmp eq i32 %i.p, 0
  br i1 %.not239, label %bb.f, label %bb.h

.thread400:                                       ; preds = %.thread397
  %i.q = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.48) #30
  %.not239401 = icmp eq i32 %i.q, 0
  br i1 %.not239401, label %.thread402, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not240 = icmp eq i32 %i.j, 3
  br i1 %.not240, label %bb.g, label %.thread402

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !274
  %i.w = tail call ptr @dictFetchValue(ptr noundef %i.t, ptr noundef %i.v) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %sentinelGetMasterByNameOrReplyError.exit.thread, label %sentinelGetMasterByNameOrReplyError.exit

sentinelGetMasterByNameOrReplyError.exit.thread:  ; preds = %bb.g
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.301) #26
  br label %.thread

sentinelGetMasterByNameOrReplyError.exit:         ; preds = %bb.g
  tail call void @addReplySentinelRedisInstance(ptr noundef nonnull %0, ptr noundef nonnull %i.w)
  br label %.thread

bb.h:                                             ; preds = %.thread400, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.y = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.350) #30
  %.not241 = icmp eq i32 %i.y, 0
  br i1 %.not241, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.351) #30
  %.not242 = icmp eq i32 %i.z, 0
  br i1 %.not242, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not243 = icmp eq i32 %i.j, 3
  br i1 %.not243, label %bb.k, label %.thread402

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !273
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !274
  %i.af = tail call ptr @dictFetchValue(ptr noundef %i.ac, ptr noundef %i.ae) #26 ; 2 uses
  %.not.i309 = icmp eq ptr %i.af, null
  br i1 %.not.i309, label %sentinelGetMasterByNameOrReplyError.exit310.thread, label %sentinelGetMasterByNameOrReplyError.exit310

sentinelGetMasterByNameOrReplyError.exit310.thread: ; preds = %bb.k
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.301) #26
  br label %.thread

sentinelGetMasterByNameOrReplyError.exit310:      ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  tail call void @addReplyDictOfRedisInstances(ptr noundef nonnull %0, ptr noundef %i.ah)
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %i.ai = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.352) #30
  %.not244 = icmp eq i32 %i.ai, 0
  br i1 %.not244, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not245 = icmp eq i32 %i.j, 3
  br i1 %.not245, label %bb.n, label %.thread402

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !273
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !274
  %i.ao = tail call ptr @dictFetchValue(ptr noundef %i.al, ptr noundef %i.an) #26 ; 2 uses
  %.not.i311 = icmp eq ptr %i.ao, null
  br i1 %.not.i311, label %sentinelGetMasterByNameOrReplyError.exit312.thread, label %sentinelGetMasterByNameOrReplyError.exit312

sentinelGetMasterByNameOrReplyError.exit312.thread: ; preds = %bb.n
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.301) #26
  br label %.thread

sentinelGetMasterByNameOrReplyError.exit312:      ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !13
  tail call void @addReplyDictOfRedisInstances(ptr noundef nonnull %0, ptr noundef %i.aq)
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.ar = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.6) #30
  %.not246 = icmp ne i32 %i.ar, 0
  %brmerge = or i1 %i.k, %.not246
  br i1 %brmerge, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull @sentinel, i64 noundef 40) #26
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.as = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.353) #30
  %.not247 = icmp eq i32 %i.as, 0
  br i1 %.not247, label %bb.r, label %bb.ae

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %.not248 = icmp eq i32 %i.j, 6
  br i1 %.not248, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !273
  %i.av = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.au, ptr noundef nonnull %i.d, ptr noundef null) #26
  %.not249 = icmp eq i32 %i.av, 0
  br i1 %.not249, label %bb.t, label %.thread329

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !273
  %i.az = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.ay, ptr noundef nonnull %i.b, ptr noundef null) #26
  %.not250 = icmp eq i32 %i.az, 0
  br i1 %.not250, label %bb.u, label %.thread329

bb.u:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.bb = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !273
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !274
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !182
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = call ptr @getSentinelRedisInstanceByAddrAndRunID(ptr noundef %i.ba, ptr noundef %i.bf, i32 noundef %i.bh, ptr noundef null) ; 4 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 64, !tbaa !75
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = icmp ne ptr %i.bi, null                 ; 2 uses
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %.thread324, label %bb.v

.thread324:                                       ; preds = %bb.u
  %i.bm = load i32, ptr %i.bi, align 8, !tbaa !39
  %.fr412 = freeze i32 %i.bm                      ; 2 uses
  %i.bn = and i32 %.fr412, 9
  %or.cond300 = icmp ne i32 %i.bn, 9
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.bl, label %._crit_edge376, label %.thread404

.thread404:                                       ; preds = %bb.v
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 3) #26
  br label %bb.aa

._crit_edge376:                                   ; preds = %bb.v
  %.pre377 = load i32, ptr %i.bi, align 8, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge376, %.thread324
  %i.bo = phi i32 [ %.fr412, %.thread324 ], [ %.pre377, %._crit_edge376 ]
  %.not255327 = phi i1 [ %or.cond300, %.thread324 ], [ true, %._crit_edge376 ] ; 2 uses
  %i.bp = and i32 %i.bo, 1
  %.not253 = icmp eq i32 %i.bp, 0
  br i1 %.not253, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !273
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !274 ; 2 uses
  %i.bv = call i32 @strcasecmp(ptr noundef %i.bu, ptr noundef nonnull @.str.354) #30
  %.not254 = icmp eq i32 %i.bv, 0
  br i1 %.not254, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !115
  %i.bx = call ptr @sentinelVoteLeader(ptr noundef nonnull %i.bi, i64 noundef %i.bw, ptr noundef %i.bu, ptr noundef nonnull %i.c) ; 2 uses
  %.pre378 = load i64, ptr %i.c, align 8, !tbaa !182 ; 2 uses
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 3) #26
  br i1 %.not255327, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x, %bb.w
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 3) #26
  br i1 %.not255327, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %.thread404, %bb.z
  %.0212409 = phi ptr [ null, %.thread404 ], [ null, %bb.z ], [ %i.bx, %bb.y ]
  %i.by = phi i64 [ 0, %.thread404 ], [ 0, %bb.z ], [ %.pre378, %bb.y ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.0212408 = phi ptr [ %.0212409, %bb.aa ], [ null, %bb.z ], [ %i.bx, %bb.y ] ; 3 uses
  %i.bz = phi i64 [ %i.by, %bb.aa ], [ 0, %bb.z ], [ %.pre378, %bb.y ]
  %.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @shared, i64 24), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @shared, i64 32), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @shared, i64 32), %bb.y ]
  %i.ca = load ptr, ptr %.in, align 8
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ca) #26
  %.not256 = icmp eq ptr %.0212408, null          ; 2 uses
  %i.cb = select i1 %.not256, ptr @.str.354, ptr %.0212408
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull %i.cb) #26
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bz) #26
  br i1 %.not256, label %.thread329, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @sdsfree(ptr noundef nonnull %.0212408) #26
  br label %.thread329

.thread329:                                       ; preds = %bb.s, %bb.t, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.thread

bb.ad:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.thread402

bb.ae:                                            ; preds = %bb.q
  %i.cc = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.355) #30
  %.not257 = icmp eq i32 %i.cc, 0
  br i1 %.not257, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not258 = icmp eq i32 %i.j, 3
  br i1 %.not258, label %bb.ag, label %.thread402

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !273
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !274
  %i.ch = tail call i32 @sentinelResetMastersByPattern(ptr noundef %i.cg, i32 noundef 65536)
  %i.ci = sext i32 %i.ch to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ci) #26
  br label %.thread

bb.ah:                                            ; preds = %bb.ae
  %i.cj = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.356) #30
  %.not259 = icmp eq i32 %i.cj, 0
  br i1 %.not259, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %.not260 = icmp eq i32 %i.j, 3
  br i1 %.not260, label %bb.aj, label %.thread402

bb.aj:                                            ; preds = %bb.ai
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !273
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !274
  %i.co = tail call ptr @sentinelGetMasterByName(ptr noundef %i.cn) ; 5 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @addReplyNullArray(ptr noundef nonnull %0) #26
  br label %.thread

bb.al:                                            ; preds = %bb.aj
  %i.cq = load i32, ptr %i.co, align 8, !tbaa !39
  %i.cr = and i32 %i.cq, 64
  %.not.i313 = icmp eq i32 %i.cr, 0
  br i1 %.not.i313, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 312
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41 ; 2 uses
  %.not7.i = icmp eq ptr %i.ct, null
  br i1 %.not7.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !180
  %i.cw = icmp sgt i32 %i.cv, 4
  br i1 %i.cw, label %sentinelGetCurrentMasterAddress.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br label %sentinelGetCurrentMasterAddress.exit

sentinelGetCurrentMasterAddress.exit:             ; preds = %bb.an, %bb.ao
  %.pn.i = phi ptr [ %i.co, %bb.ao ], [ %i.ct, %bb.an ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !34 ; 2 uses
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #26
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i314 = icmp eq i32 %i.cx, 0
  %.in.idx.i = select i1 %.not.i314, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.in.idx.i
  %i.cy = load ptr, ptr %.in.i, align 8, !tbaa !95
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef %i.cy) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !94
  %i.db = sext i32 %i.da to i64
  tail call void @addReplyBulkLongLong(ptr noundef nonnull %0, i64 noundef %i.db) #26
  br label %.thread

bb.ap:                                            ; preds = %bb.ah
  %i.dc = tail call i32 @strcasecmp(ptr noundef %.pre375, ptr noundef nonnull @.str.357) #30
  %.not261 = icmp eq i32 %i.dc, 0
  br i1 %.not261, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %bb.ap
  %.not262 = icmp eq i32 %i.j, 3
  br i1 %.not262, label %bb.ar, label %.thread402

bb.ar:                                            ; preds = %bb.aq
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !273
  %i.df = tail call ptr @sentinelGetMasterByNameOrReplyError(ptr noundef nonnull %0, ptr noundef %i.de) ; 7 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = load i32, ptr %i.df, align 8, !tbaa !39
  %i.di = and i32 %i.dh, 64
  %.not263 = icmp eq i32 %i.di, 0
  br i1 %.not263, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.358) #26
  br label %.thread

bb.au:                                            ; preds = %bb.as
  %i.dj = tail call ptr @sentinelSelectSlave(ptr noundef nonnull %i.df)
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.359) #26
  br label %.thread

bb.aw:                                            ; preds = %bb.au
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
end_hunk_4
begin_hunk_5_@sentinelStartFailover:bb.a
  tail call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.427, ptr noundef nonnull %0, ptr noundef nonnull @.str.54)
  %i.h = tail call i64 @mstime() #26
  %i.i = tail call i32 @rand() #26
  %i.j = srem i32 %i.i, 1000
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.l, ptr %i.m, align 8, !tbaa !291
  %i.n = tail call i64 @mstime() #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.n, ptr %i.o, align 8, !tbaa !255
  ret void
}

declare void @addReplySds(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @sdscatfmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @addReplyErrorSds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelSetCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 7 uses
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !273
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !274
  %i.j = tail call ptr @dictFetchValue(ptr noundef %i.g, ptr noundef %i.i) #26 ; 18 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %sentinelGetMasterByNameOrReplyError.exit.thread, label %sentinelGetMasterByNameOrReplyError.exit.preheader

sentinelGetMasterByNameOrReplyError.exit.preheader: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !259  ; 2 uses
  %i.m = icmp slt i32 %i.l, 4
  br i1 %i.m, label %sentinelFlushConfig.exit, label %.lr.ph

.lr.ph:                                           ; preds = %sentinelGetMasterByNameOrReplyError.exit.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 184 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 328 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 320 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 172
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

sentinelGetMasterByNameOrReplyError.exit.thread:  ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.301) #26
  br label %sentinelFlushConfig.exit

bb.b:                                             ; preds = %.lr.ph, %sentinelGetMasterByNameOrReplyError.exit
  %i.ab = phi i32 [ %i.l, %.lr.ph ], [ %i.gq, %sentinelGetMasterByNameOrReplyError.exit ]
  %.0321 = phi i32 [ 3, %.lr.ph ], [ %i.gp, %sentinelGetMasterByNameOrReplyError.exit ] ; 14 uses
  %.0190319 = phi i32 [ 0, %.lr.ph ], [ %.9, %sentinelGetMasterByNameOrReplyError.exit ] ; 2 uses
  %i.ac = xor i32 %.0321, -1
  %i.ad = add i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !272 ; 13 uses
  %i.af = sext i32 %.0321 to i64                  ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !273
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !274 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ak = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.70) #30
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = icmp sgt i32 %i.ad, 0                   ; 9 uses
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.an = add nsw i32 %.0321, 1                   ; 4 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !273
  %i.ar = call i32 @getLongLongFromObject(ptr noundef %i.aq, ptr noundef nonnull %i.b) #26
  %i.as = icmp ne i32 %i.ar, -1
  %i.at = load i64, ptr %i.b, align 8             ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  %or.cond10.not = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond10.not, label %bb.d, label %.thread.loopexit

bb.d:                                             ; preds = %bb.c
  store i64 %i.at, ptr %i.w, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !23  ; 2 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !13
  store ptr %i.aw, ptr %i.y, align 8, !tbaa !188
  store ptr null, ptr %i.aa, align 16, !tbaa !188
  %.not11.i = icmp eq ptr %i.av, null
  br i1 %.not11.i, label %.thread250, label %.lr.ph14.i

.thread250:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.thread272

.lr.ph14.i:                                       ; preds = %bb.d, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.d ]
  %i.ax = phi ptr [ %i.bf, %._crit_edge.i ], [ %i.av, %bb.d ]
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef nonnull %i.ax) #26
  %i.ay = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not910.i = icmp eq ptr %i.ay, null
  br i1 %.not910.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph14.i, %.lr.ph.i
  %i.az = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.ay, %.lr.ph14.i ]
  %i.ba = call ptr @dictGetVal(ptr noundef nonnull %i.az) #26
  %i.bb = load i64, ptr %i.w, align 8, !tbaa !165
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !165
  %i.bd = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not9.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !189

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph14.i
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !188 ; 2 uses
  %.not.i246 = icmp eq ptr %i.bf, null
  br i1 %.not.i246, label %bb.e, label %.lr.ph14.i, !llvm.loop !190

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.thread272

bb.f:                                             ; preds = %bb.b
  %i.bg = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.73) #30
  %i.bh = icmp eq i32 %i.bg, 0
  %or.cond12 = and i1 %i.am, %i.bh
  br i1 %or.cond12, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = add nsw i32 %.0321, 1                   ; 3 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !273
  %i.bm = call i32 @getLongLongFromObject(ptr noundef %i.bl, ptr noundef nonnull %i.b) #26
  %i.bn = icmp ne i32 %i.bm, -1
  %i.bo = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  %or.cond14.not = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond14.not, label %.thread251, label %.thread.loopexit

.thread251:                                       ; preds = %bb.g
  store i64 %i.bo, ptr %i.v, align 8, !tbaa !175
  br label %.thread272

bb.h:                                             ; preds = %bb.f
  %i.bq = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.74) #30
  %i.br = icmp eq i32 %i.bq, 0
  %or.cond16 = and i1 %i.am, %i.br
  br i1 %or.cond16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = add nsw i32 %.0321, 1                   ; 3 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !273
  %i.bw = call i32 @getLongLongFromObject(ptr noundef %i.bv, ptr noundef nonnull %i.b) #26
  %i.bx = icmp ne i32 %i.bw, -1
  %i.by = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 0
  %or.cond18.not = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond18.not, label %.thread255, label %.thread.loopexit

.thread255:                                       ; preds = %bb.i
  %i.ca = trunc i64 %i.by to i32
  store i32 %i.ca, ptr %i.u, align 4, !tbaa !173
  br label %.thread272

bb.j:                                             ; preds = %bb.h
  %i.cb = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.75) #30
  %i.cc = icmp eq i32 %i.cb, 0
  %or.cond20 = and i1 %i.am, %i.cc
  br i1 %or.cond20, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.cd = add nsw i32 %.0321, 1                   ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !273
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !274 ; 4 uses
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 64, !tbaa !84
  %.not233 = icmp eq i32 %i.cj, 0
  br i1 %.not233, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.393) #26
  br label %.thread259

bb.m:                                             ; preds = %bb.k
  %char0234 = load i8, ptr %i.ci, align 1
  %.not235 = icmp eq i8 %char0234, 0
  br i1 %.not235, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = call i32 @access(ptr noundef nonnull %i.ci, i32 noundef 1) #26
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.394) #26
  br label %.thread259

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cm = load ptr, ptr %i.t, align 8, !tbaa !27
  call void @sdsfree(ptr noundef %i.cm) #26
  %char0236 = load i8, ptr %i.ci, align 1
  %.not237 = icmp eq i8 %char0236, 0
  br i1 %.not237, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = call ptr @sdsnew(ptr noundef nonnull %i.ci) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.co = phi ptr [ %i.cn, %bb.q ], [ null, %bb.p ]
  store ptr %i.co, ptr %i.t, align 8, !tbaa !27
  br label %.thread272

bb.s:                                             ; preds = %bb.j
  %i.cp = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.77) #30
  %i.cq = icmp eq i32 %i.cp, 0
  %or.cond22 = and i1 %i.am, %i.cq
  br i1 %or.cond22, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cr = add nsw i32 %.0321, 1                   ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !273
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !274 ; 4 uses
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 128), align 64, !tbaa !84
  %.not228 = icmp eq i32 %i.cx, 0
  br i1 %.not228, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.393) #26
  br label %.thread259

bb.v:                                             ; preds = %bb.t
  %char0229 = load i8, ptr %i.cw, align 1
  %.not230 = icmp eq i8 %char0229, 0
  br i1 %.not230, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = call i32 @access(ptr noundef nonnull %i.cw, i32 noundef 1) #26
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.395) #26
  br label %.thread259

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.da = load ptr, ptr %i.s, align 8, !tbaa !28
  call void @sdsfree(ptr noundef %i.da) #26
  %char0231 = load i8, ptr %i.cw, align 1
  %.not232 = icmp eq i8 %char0231, 0
  br i1 %.not232, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = call ptr @sdsnew(ptr noundef nonnull %i.cw) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dc = phi ptr [ %i.db, %bb.z ], [ null, %bb.y ]
  store ptr %i.dc, ptr %i.s, align 8, !tbaa !28
  br label %.thread272

bb.ab:                                            ; preds = %bb.s
  %i.dd = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.79) #30
  %i.de = icmp eq i32 %i.dd, 0
  %or.cond24 = and i1 %i.am, %i.de
  br i1 %or.cond24, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.df = add nsw i32 %.0321, 1                   ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !273
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !274 ; 2 uses
  %i.dl = load ptr, ptr %i.r, align 8, !tbaa !31
  call void @sdsfree(ptr noundef %i.dl) #26
  %char0226 = load i8, ptr %i.dk, align 1
  %.not227 = icmp eq i8 %char0226, 0
  br i1 %.not227, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = call ptr @sdsnew(ptr noundef nonnull %i.dk) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dn = phi ptr [ %i.dm, %bb.ad ], [ null, %bb.ac ]
  store ptr %i.dn, ptr %i.r, align 8, !tbaa !31
  call void @dropInstanceConnections(ptr noundef nonnull %i.j)
  br label %.thread272

bb.af:                                            ; preds = %bb.ab
  %i.do = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.80) #30
  %i.dp = icmp eq i32 %i.do, 0
  %or.cond26 = and i1 %i.am, %i.dp
  br i1 %or.cond26, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dq = add nsw i32 %.0321, 1                   ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !273
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !274 ; 2 uses
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !32
  call void @sdsfree(ptr noundef %i.dw) #26
  %char0 = load i8, ptr %i.dv, align 1
  %.not225 = icmp eq i8 %char0, 0
  br i1 %.not225, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = call ptr @sdsnew(ptr noundef nonnull %i.dv) #26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.dy = phi ptr [ %i.dx, %bb.ah ], [ null, %bb.ag ]
  store ptr %i.dy, ptr %i.q, align 8, !tbaa !32
  call void @dropInstanceConnections(ptr noundef nonnull %i.j)
  br label %.thread272

bb.aj:                                            ; preds = %bb.af
  %i.dz = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.259) #30
  %i.ea = icmp eq i32 %i.dz, 0
  %or.cond28 = and i1 %i.am, %i.ea
  br i1 %or.cond28, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eb = add nsw i32 %.0321, 1                   ; 3 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !273
  %i.ef = call i32 @getLongLongFromObject(ptr noundef %i.ee, ptr noundef nonnull %i.b) #26
  %i.eg = icmp ne i32 %i.ef, -1
  %i.eh = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ei = icmp sgt i64 %i.eh, 0
  %or.cond30.not = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond30.not, label %.thread268, label %.thread.loopexit

.thread268:                                       ; preds = %bb.ak
  %i.ej = trunc i64 %i.eh to i32
  store i32 %i.ej, ptr %i.p, align 8, !tbaa !89
  br label %.thread272

bb.al:                                            ; preds = %bb.aj
  %i.ek = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.87) #30
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = icmp sgt i32 %i.ad, 1
  %or.cond32 = and i1 %i.em, %i.el
  br i1 %or.cond32, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.en = add nsw i32 %.0321, 1                   ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !273
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !274 ; 4 uses
  %i.et = add nsw i32 %.0321, 2                   ; 4 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !273
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !274 ; 4 uses
  %i.ez = call fastcc i64 @sdslen(ptr noundef %i.es)
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = call fastcc i64 @sdslen(ptr noundef %i.ey)
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fd = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.fe = call i32 @dictDelete(ptr noundef %i.fd, ptr noundef %i.es) #26 ; 0 uses
  %i.ff = call i32 @strcasecmp(ptr noundef %i.es, ptr noundef %i.ey) #30
  %.not221 = icmp eq i32 %i.ff, 0
  br i1 %.not221, label %.thread272, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = call ptr @sdsdup(ptr noundef %i.es) #26
  %i.fh = call ptr @sdsdup(ptr noundef %i.ey) #26
  %i.fi = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.fj = call i32 @dictAdd(ptr noundef %i.fi, ptr noundef %i.fg, ptr noundef %i.fh) #26 ; 0 uses
  br label %.thread272

bb.aq:                                            ; preds = %bb.am, %bb.an
  %i.fk = call fastcc i64 @sdslen(ptr noundef %i.ey)
  %.not222 = icmp eq i64 %i.fk, 0
  %i.fl = select i1 %.not222, i32 %i.et, i32 %i.en
  br label %.thread

bb.ar:                                            ; preds = %bb.al
  %i.fm = call i32 @strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.92) #30
  %i.fn = icmp eq i32 %i.fm, 0
  %or.cond34 = and i1 %i.am, %i.fn
  br i1 %or.cond34, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fo = add nsw i32 %.0321, 1                   ; 3 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !273
  %i.fs = call i32 @getLongLongFromObject(ptr noundef %i.fr, ptr noundef nonnull %i.b) #26
  %i.ft = icmp ne i32 %i.fs, -1
  %i.fu = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  %or.cond36.not = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond36.not, label %.thread277, label %.thread.loopexit

.thread277:                                       ; preds = %bb.as
  store i64 %i.fu, ptr %i.n, align 8, !tbaa !166
  br label %.thread272

bb.at:                                            ; preds = %bb.ar
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.396, ptr noundef %i.aj) #26
  br label %.thread259

.thread272:                                       ; preds = %bb.ap, %bb.ao, %bb.e, %.thread277, %.thread268, %bb.aa, %bb.r, %.thread255, %.thread251, %.thread250, %bb.ae, %bb.ai
  %.not244 = phi i1 [ true, %bb.e ], [ true, %.thread251 ], [ true, %.thread255 ], [ true, %bb.r ], [ true, %bb.aa ], [ false, %bb.ae ], [ true, %bb.ai ], [ true, %.thread268 ], [ true, %.thread250 ], [ true, %.thread277 ], [ true, %bb.ao ], [ true, %bb.ap ]
  %.1 = phi i32 [ %i.an, %bb.e ], [ %i.bi, %.thread251 ], [ %i.bs, %.thread255 ], [ %i.cd, %bb.r ], [ %i.cr, %bb.aa ], [ %i.df, %bb.ae ], [ %i.dq, %bb.ai ], [ %i.eb, %.thread268 ], [ %i.an, %.thread250 ], [ %i.fo, %.thread277 ], [ %i.et, %bb.ao ], [ %i.et, %bb.ap ] ; 2 uses
  %.9 = add nuw nsw i32 %.0190319, 1
  %i.fw = sub nsw i32 %.1, %.0321
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.af ; 4 uses
end_hunk_5
begin_hunk_6_@sentinelSetCommand:bb.a
  %i.gt = sext i32 %.8201.ph to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !273
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !274
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.402, ptr noundef %i.gx, ptr noundef %i.aj) #26
  br label %bb.az

bb.az:                                            ; preds = %.thread259, %.thread
  %.not245 = icmp eq i32 %.0190319, 0
  br i1 %.not245, label %sentinelFlushConfig.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 16), align 8, !tbaa !86
  %i.ha = call i32 @rewriteConfig(ptr noundef %i.gz, i32 noundef 0) #26
  store i32 %i.gy, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  %i.hb = icmp eq i32 %i.ha, -1
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87 ; 2 uses
  br i1 %i.hb, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hd = icmp sgt i32 %i.hc, 3
  br i1 %i.hd, label %sentinelFlushConfig.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.he = tail call ptr @__errno_location() #28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !9
  %i.hg = call ptr @strerror(i32 noundef %i.hf) #26
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.144, ptr noundef %i.hg) #26
  br label %sentinelFlushConfig.exit

bb.bd:                                            ; preds = %bb.ba
  %i.hh = icmp sgt i32 %i.hc, 2
  br i1 %i.hh, label %sentinelFlushConfig.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.145) #26
  br label %sentinelFlushConfig.exit

sentinelFlushConfig.exit:                         ; preds = %sentinelGetMasterByNameOrReplyError.exit.preheader, %bb.be, %bb.bd, %bb.bc, %bb.bb, %sentinelGetMasterByNameOrReplyError.exit.thread, %bb.az, %sentinelGetMasterByNameOrReplyError.exit._crit_edge
  ret void
}

declare void @addReplyNull(ptr noundef) local_unnamed_addr #1

declare void @addReplySubcommandSyntaxError(ptr noundef) local_unnamed_addr #1

declare void @addReplyErrorArity(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelInfoCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) @__const.sentinelInfoCommand.sentinel_sections, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !272
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !259
  %i.i = add nsw i32 %i.h, -1
  %i.j = call ptr @genInfoSectionDict(ptr noundef nonnull %i.f, i32 noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.j) #26
  %i.k = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.a, %.loopexit
  %i.l = phi ptr [ %i.t, %.loopexit ], [ %i.k, %bb.a ]
  %i.m = call ptr @dictGetKey(ptr noundef nonnull %i.l) #26 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 16, !tbaa !95  ; 2 uses
  %.not5055 = icmp eq ptr %i.n, null
  br i1 %.not5055, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95   ; 2 uses
  %.not50 = icmp eq ptr %i.p, null
  br i1 %.not50, label %._crit_edge, label %.lr.ph, !llvm.loop !295

.lr.ph:                                           ; preds = %.lr.ph59, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph59 ]
  %i.q = phi ptr [ %i.p, %bb.b ], [ %i.n, %.lr.ph59 ]
  %i.r = call i32 @strcasecmp(ptr noundef nonnull %i.q, ptr noundef %i.m) #30
  %.not51 = icmp eq i32 %i.r, 0
  br i1 %.not51, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph59
  %i.s = call i32 @dictDelete(ptr noundef %i.j, ptr noundef %i.m) #26 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %i.t = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !296

._crit_edge60:                                    ; preds = %.loopexit, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  %i.u = load i32, ptr %i.b, align 4, !tbaa !9
  %i.v = icmp ne i32 %i.u, 0
  %i.w = load i32, ptr %i.c, align 4
  %i.x = icmp ne i32 %i.w, 0
  %or.cond = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge60
  call void @releaseInfoSectionDict(ptr noundef %i.j) #26
  %i.y = load ptr, ptr @sentinelInfoCommand.cached_all_info_sections, align 8, !tbaa !188 ; 2 uses
  %.not41 = icmp eq ptr %i.y, null
  br i1 %.not41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = call ptr @dictCreate(ptr noundef nonnull @stringSetDictType) #26 ; 2 uses
  store ptr %i.z, ptr @sentinelInfoCommand.cached_all_info_sections, align 8, !tbaa !188
  call void @addInfoSectionsToDict(ptr noundef %i.z, ptr noundef nonnull %i.a) #26
  %.pre = load ptr, ptr @sentinelInfoCommand.cached_all_info_sections, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %._crit_edge60
  %.034 = phi ptr [ %i.j, %._crit_edge60 ], [ %.pre, %bb.d ], [ %i.y, %bb.c ] ; 4 uses
  %i.aa = call ptr @genRedisInfoString(ptr noundef %.034, i32 noundef 0, i32 noundef 0) #26 ; 9 uses
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !9
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call ptr @dictFind(ptr noundef %.034, ptr noundef nonnull @.str.50) #26
  %.not43 = icmp eq ptr %i.ac, null
  br i1 %.not43, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ad = getelementptr i8, ptr %i.aa, i64 -1
  %.val.i = load i8, ptr %i.ad, align 1, !tbaa !93 ; 2 uses
  %i.ae = and i8 %.val.i, 7
  switch i8 %i.ae, label %sdslen.exit.thread [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = lshr i8 %.val.i, 3
  %i.ag = zext nneg i8 %i.af to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 -3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !93
  %i.aj = zext i8 %i.ai to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -5
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !214
  %i.am = zext i16 %i.al to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %i.aa, i64 -9
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i32 %i.ao to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds i8, ptr %i.aa, i64 -17
  %i.ar = load i64, ptr %i.aq, align 1, !tbaa !182
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ar, %bb.l ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ], [ %i.am, %bb.j ], [ %i.ap, %bb.k ]
  %.not44 = icmp eq i64 %.0.i, 0
  br i1 %.not44, label %sdslen.exit.thread, label %bb.m

bb.m:                                             ; preds = %sdslen.exit
  %i.as = call ptr @sdscat(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.160) #26
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.g, %bb.m, %sdslen.exit
  %.037 = phi ptr [ %i.as, %bb.m ], [ %i.aa, %sdslen.exit ], [ %i.aa, %bb.g ]
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !182
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !182
  %i.ay = add i64 %i.ax, %i.av
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 64, !tbaa !75 ; 2 uses
  %.not45 = icmp eq i32 %i.az, 0
  br i1 %.not45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %sdslen.exit.thread
  %i.ba = call i64 @mstime() #26
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 80), align 16, !tbaa !76
  %i.bc = sub nsw i64 %i.ba, %i.bb
  %i.bd = sdiv i64 %i.bc, 1000
  br label %bb.o

bb.o:                                             ; preds = %sdslen.exit.thread, %bb.n
  %i.be = phi i64 [ %i.bd, %bb.n ], [ -1, %sdslen.exit.thread ]
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 68), align 4, !tbaa !77
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !79
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !104
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 120), align 8, !tbaa !83
  %i.bl = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.037, ptr noundef nonnull @.str.389, i64 noundef %i.ay, i32 noundef %i.az, i64 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i64 noundef %i.bj, i64 noundef %i.bk) #26 ; 2 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef %i.bm) #26
  %i.bn = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not4661 = icmp eq ptr %i.bn, null
  br i1 %.not4661, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.o, %.lr.ph65
  %i.bo = phi ptr [ %i.cs, %.lr.ph65 ], [ %i.bn, %bb.o ]
  %.03563 = phi i32 [ %i.bt, %.lr.ph65 ], [ 0, %bb.o ] ; 2 uses
  %.162 = phi ptr [ %i.cr, %.lr.ph65 ], [ %i.bl, %bb.o ]
  %i.bp = call ptr @dictGetVal(ptr noundef nonnull %i.bo) #26 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !39 ; 2 uses
  %i.br = and i32 %i.bq, 16
  %.not48 = icmp eq i32 %i.br, 0
  %i.bs = and i32 %i.bq, 8
  %.not49 = icmp eq i32 %i.bs, 0
  %spec.select = select i1 %.not49, ptr @.str.262, ptr @.str.391
  %.0 = select i1 %.not48, ptr %spec.select, ptr @.str.390
  %i.bt = add nuw nsw i32 %.03563, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 2 uses
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.by, 0
  %.in.idx.i = select i1 %.not.i, i64 8, i64 0
  %.in.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.in.idx.i
  %i.bz = load ptr, ptr %.in.i, align 8, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !182
  %i.ci = add i64 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !182
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !182
  %i.cp = add i64 %i.cm, 1
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.162, ptr noundef nonnull @.str.392, i32 noundef %.03563, ptr noundef %i.bv, ptr noundef nonnull %.0, ptr noundef %i.bz, i32 noundef %i.cb, i64 noundef %i.ci, i64 noundef %i.cq) #26 ; 2 uses
  %i.cs = call ptr @dictNext(ptr noundef nonnull %2) #26 ; 2 uses
  %.not46 = icmp eq ptr %i.cs, null
  br i1 %.not46, label %._crit_edge66, label %.lr.ph65, !llvm.loop !297

._crit_edge66:                                    ; preds = %.lr.ph65, %bb.o
  %.1.lcssa = phi ptr [ %i.bl, %bb.o ], [ %i.cr, %.lr.ph65 ]
  call void @dictResetIterator(ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge66, %bb.f
  %.2 = phi ptr [ %.1.lcssa, %._crit_edge66 ], [ %i.aa, %bb.f ]
  %i.ct = load ptr, ptr @sentinelInfoCommand.cached_all_info_sections, align 8, !tbaa !188
  %.not47 = icmp eq ptr %.034, %i.ct
  br i1 %.not47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @releaseInfoSectionDict(ptr noundef %.034) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @addReplyBulkSds(ptr noundef %0, ptr noundef %.2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare ptr @genInfoSectionDict(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @releaseInfoSectionDict(ptr noundef) local_unnamed_addr #1

declare void @addInfoSectionsToDict(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @genRedisInfoString(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @addReplyBulkSds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelRoleCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #26
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull @.str.50, i64 noundef 8) #26
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !182
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !182
  %i.f = add i64 %i.e, %i.c
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.f) #26
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef %i.g) #26
  %i.h = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.m, %.lr.ph ], [ %i.h, %bb.a ]
  %i.j = call ptr @dictGetVal(ptr noundef nonnull %i.i) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.l) #26
  %i.m = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !298

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelPublishCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !273
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !274
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(19) @.str.159) #30
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.403) #26
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !273
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !274  ; 6 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %.val.i = load i8, ptr %i.l, align 1, !tbaa !93 ; 2 uses
  %i.m = and i8 %.val.i, 7
  switch i8 %i.m, label %sdslen.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i8 %.val.i, 3
  %i.o = zext nneg i8 %i.n to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !93
  %i.r = zext i8 %i.q to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -5
  %i.t = load i16, ptr %i.s, align 1, !tbaa !214
  %i.u = zext i16 %i.t to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 -9
  %i.w = load i32, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i32 %i.w to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 -17
  %i.z = load i64, ptr %i.y, align 1, !tbaa !182
  br label %sdslen.exit
end_hunk_6
begin_hunk_7_@sentinelFailoverReconfNextSlave:bb.a
  %i.g = and i32 %i.f, 768
  %.not30 = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not30 to i32
  %spec.select = add nuw nsw i32 %.032, %i.h      ; 2 uses
  %i.i = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !307

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %.lr.ph ] ; 2 uses
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef %i.j) #26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !173
  %i.m = icmp slt i32 %.0.lcssa, %i.l
  br i1 %i.m, label %.lr.ph35, label %.critedge

.lr.ph35:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph35, %bb.k
  %.233 = phi i32 [ %.0.lcssa, %.lr.ph35 ], [ %.4, %bb.k ] ; 5 uses
  %i.o = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call ptr @dictGetVal(ptr noundef nonnull %i.o) #26 ; 12 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39   ; 3 uses
  %i.r = and i32 %i.q, 1152
  %.not26 = icmp eq i32 %i.r, 0
  br i1 %.not26, label %bb.d, label %bb.k, !llvm.loop !308

bb.d:                                             ; preds = %bb.c
  %i.s = and i32 %i.q, 256
  %.not27 = icmp eq i32 %i.s, 0
  br i1 %.not27, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call i64 @mstime() #26
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.v = load i64, ptr %i.u, align 8, !tbaa !169
  %i.w = sub nsw i64 %i.t, %i.v
  %i.x = load i64, ptr @sentinel_slave_reconf_timeout, align 8, !tbaa !115
  %i.y = icmp sgt i64 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.p, align 8, !tbaa !39
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 2, ptr noundef nonnull @.str.440, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.54)
  %i.z = load i32, ptr %i.p, align 8, !tbaa !39
  %i.aa = and i32 %i.z, -1281
  %i.ab = or disjoint i32 %i.aa, 1024             ; 2 uses
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge37, %bb.f, %bb.d
  %i.ac = phi i32 [ %.pre, %._crit_edge37 ], [ %i.ab, %bb.f ], [ %i.q, %bb.d ]
  %i.ad = and i32 %i.ac, 768
  %.not28 = icmp eq i32 %i.ad, 0
  br i1 %.not28, label %bb.h, label %bb.k, !llvm.loop !308

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !128
  %.not29 = icmp eq i32 %i.ah, 0
  br i1 %.not29, label %bb.i, label %bb.k, !llvm.loop !308

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.al = call i32 @sentinelSendSlaveOf(ptr noundef nonnull %i.p, ptr noundef %i.ak)
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.p, align 8, !tbaa !39
  %i.ao = or i32 %i.an, 256
  store i32 %i.ao, ptr %i.p, align 8, !tbaa !39
  %i.ap = call i64 @mstime() #26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !169
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 2, ptr noundef nonnull @.str.441, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.54)
  %i.ar = add nsw i32 %.233, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g, %bb.c
  %.4 = phi i32 [ %.233, %bb.h ], [ %.233, %bb.c ], [ %.233, %bb.g ], [ %i.ar, %bb.j ], [ %.233, %bb.i ] ; 2 uses
  %i.as = load i32, ptr %i.k, align 4, !tbaa !173
  %i.at = icmp slt i32 %.4, %i.as
  br i1 %i.at, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.k, %._crit_edge
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  call void @sentinelFailoverDetectEnd(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelFailoverSwitchToPromotedSlave(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr %0, ptr %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i = icmp eq i32 %i.g, 0
  %.in.idx.i = select i1 %.not.i, i64 8, i64 0    ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.in.idx.i
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %., i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.in.i14 = getelementptr inbounds nuw i8, ptr %i.l, i64 %.in.idx.i
  %i.m = load ptr, ptr %.in.i14, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !94
  tail call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.199, ptr noundef %0, ptr noundef nonnull @.str.200, ptr noundef %i.d, ptr noundef %i.h, i32 noundef %i.j, ptr noundef %i.m, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !94
  %i.t = tail call i32 @sentinelResetMasterAndChangeAddress(ptr noundef %0, ptr noundef %i.q, i32 noundef %i.s) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelFailoverStateMachine(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !155

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.21, i32 noundef 5321) #26
  tail call void @abort() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 64
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load i32, ptr %i.d, align 8, !tbaa !180
  switch i32 %i.e, label %bb.j [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @sentinelFailoverWaitStart(ptr noundef nonnull %0)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  tail call void @sentinelFailoverSelectSlave(ptr noundef nonnull %0)
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  tail call void @sentinelFailoverSendSlaveOfNoOne(ptr noundef nonnull %0)
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  tail call void @sentinelFailoverWaitPromotion(ptr noundef nonnull %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  tail call void @sentinelFailoverReconfNextSlave(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelHandleRedisInstance(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [26 x i8], align 16               ; 5 uses
  tail call void @sentinelReconnectInstance(ptr noundef %0)
  tail call void @sentinelSendPeriodicCommands(ptr noundef %0)
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 64, !tbaa !75
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @mstime() #26
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 80), align 16, !tbaa !76
  %i.f = sub nsw i64 %i.d, %i.e
  %i.g = load i64, ptr @sentinel_tilt_period, align 8, !tbaa !115
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 64, !tbaa !75
  tail call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.444, ptr noundef null, ptr noundef nonnull @.str.445)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @sentinelCheckSubjectivelyDown(ptr noundef %0)
  %i.i = load i32, ptr %0, align 8, !tbaa !39
  %i.j = and i32 %i.i, 1
  %.not10 = icmp eq i32 %i.j, 0
  br i1 %.not10, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sentinelCheckObjectivelyDown(ptr noundef nonnull %0)
  %i.k = load i32, ptr %0, align 8, !tbaa !39
  %i.l = and i32 %i.k, 80
  %or.cond.i = icmp eq i32 %i.l, 16
  br i1 %or.cond.i, label %bb.f, label %sentinelStartFailoverIfNeeded.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @mstime() #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !291  ; 3 uses
  %i.p = sub nsw i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = load i64, ptr %i.q, align 8, !tbaa !175
  %i.s = shl nsw i64 %i.r, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.p, %i.s
  br i1 %i.t, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !305
  %.not12.i = icmp eq i64 %i.v, %i.o
  br i1 %.not12.i, label %sentinelStartFailoverIfNeeded.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = add nsw i64 %i.s, %i.o
  %i.x = sdiv i64 %i.w, 1000
  store i64 %i.x, ptr %i.a, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.y = call ptr @ctime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.z, align 8, !tbaa !93
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !291
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !305
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !87
  %i.ac = icmp sgt i32 %i.ab, 2
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.428, ptr noundef nonnull %i.b) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %sentinelStartFailoverIfNeeded.exit.thread

bb.k:                                             ; preds = %bb.f
  tail call void @sentinelStartFailover(ptr noundef nonnull %0)
  tail call void @sentinelAskMasterStateToOtherSentinels(ptr noundef nonnull %0, i32 noundef 1)
  br label %sentinelStartFailoverIfNeeded.exit.thread

sentinelStartFailoverIfNeeded.exit.thread:        ; preds = %bb.j, %bb.g, %bb.e, %bb.k
  call void @sentinelFailoverStateMachine(ptr noundef nonnull %0)
  call void @sentinelAskMasterStateToOtherSentinels(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %sentinelStartFailoverIfNeeded.exit.thread, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelHandleDictOfRedisInstances(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef %0) #26
  %i.a = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi ptr [ %i.m, %bb.c ], [ %i.a, %bb.a ]
  %.014 = phi ptr [ %.1, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.c = call ptr @dictGetVal(ptr noundef nonnull %i.b) #26 ; 6 uses
  call void @sentinelHandleRedisInstance(ptr noundef %i.c)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = and i32 %i.d, 1
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  call void @sentinelHandleDictOfRedisInstances(ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  call void @sentinelHandleDictOfRedisInstances(ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.k = load i32, ptr %i.j, align 8, !tbaa !180
  %i.l = icmp eq i32 %i.k, 6
  %spec.select = select i1 %i.l, ptr %i.c, ptr %.014
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi ptr [ %.014, %.lr.ph ], [ %spec.select, %bb.b ] ; 8 uses
  %i.m = call ptr @dictNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !309

._crit_edge:                                      ; preds = %bb.c
  %.not11 = icmp eq ptr %.1, null
  br i1 %.not11, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %..i = select i1 %.not.i, ptr %.1, ptr %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !96
  %.not.i.i = icmp eq i32 %i.t, 0
  %.in.idx.i.i = select i1 %.not.i.i, i64 8, i64 0 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.in.idx.i.i
  %i.u = load ptr, ptr %.in.i.i, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %..i, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %.in.i14.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.in.idx.i.i
  %i.z = load ptr, ptr %.in.i14.i, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !94
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.199, ptr noundef nonnull %.1, ptr noundef nonnull @.str.200, ptr noundef %i.q, ptr noundef %i.u, i32 noundef %i.w, ptr noundef %i.z, i32 noundef %i.ab)
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !34  ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !94
  %i.ag = call i32 @sentinelResetMasterAndChangeAddress(ptr noundef nonnull %.1, ptr noundef %i.ad, i32 noundef %i.af) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  call void @dictResetIterator(ptr noundef nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelCheckTiltCondition() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mstime() #26
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 88), align 8, !tbaa !78
  %i.c = sub nsw i64 %i.a, %i.b                   ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = load i64, ptr @sentinel_tilt_trigger, align 8
  %i.f = icmp sgt i64 %i.c, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 64, !tbaa !75
  %i.g = tail call i64 @mstime() #26
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 80), align 16, !tbaa !76
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 68), align 4, !tbaa !77
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 68), align 4, !tbaa !77
  tail call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.446, ptr noundef null, ptr noundef nonnull @.str.447)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = tail call i64 @mstime() #26
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 88), align 8, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelTimer() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @mstime() #26
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 88), align 8, !tbaa !78
  %i.c = sub nsw i64 %i.a, %i.b                   ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  %i.e = load i64, ptr @sentinel_tilt_trigger, align 8
  %i.f = icmp sgt i64 %i.c, %i.e
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.b, label %sentinelCheckTiltCondition.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 64), align 64, !tbaa !75
  %i.g = tail call i64 @mstime() #26
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 80), align 16, !tbaa !76
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 68), align 4, !tbaa !77
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 68), align 4, !tbaa !77
  tail call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.446, ptr noundef null, ptr noundef nonnull @.str.447)
  br label %sentinelCheckTiltCondition.exit

sentinelCheckTiltCondition.exit:                  ; preds = %bb.a, %bb.b
  %i.j = tail call i64 @mstime() #26
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 88), align 8, !tbaa !78
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 56), align 8, !tbaa !74
  tail call void @sentinelHandleDictOfRedisInstances(ptr noundef %i.k)
  tail call void @sentinelRunPendingScripts()
  tail call void @sentinelCollectTerminatedScripts()
  tail call void @sentinelKillTimedoutScripts()
  %i.l = tail call i32 @rand() #26
  %i.m = srem i32 %i.l, 10
  %i.n = add nsw i32 %i.m, 10
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !88
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @SSL_new(ptr noundef) local_unnamed_addr #1

declare i32 @redisInitiateSSL(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @redisAeAddRead(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229
  store i32 1, ptr %i.a, align 4, !tbaa !233
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !231
  %i.g = tail call i32 @aeCreateFileEvent(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 1, ptr noundef nonnull @redisAeReadEvent, ptr noundef nonnull %0) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redisAeDelRead(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229
  store i32 0, ptr %i.a, align 4, !tbaa !233
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !231
  tail call void @aeDeleteFileEvent(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redisAeAddWrite(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !232
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229
  store i32 1, ptr %i.a, align 8, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !231
  %i.g = tail call i32 @aeCreateFileEvent(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 2, ptr noundef nonnull @redisAeWriteEvent, ptr noundef nonnull %0) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redisAeDelWrite(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !232
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229
  store i32 0, ptr %i.a, align 8, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !231
  tail call void @aeDeleteFileEvent(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 2) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redisAeCleanup(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !233
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %redisAeDelRead.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229
  store i32 0, ptr %i.a, align 4, !tbaa !233
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !231
  tail call void @aeDeleteFileEvent(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 1) #26
  br label %redisAeDelRead.exit

redisAeDelRead.exit:                              ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !232
  %.not.i4 = icmp eq i32 %i.h, 0
  br i1 %.not.i4, label %redisAeDelWrite.exit, label %bb.c

bb.c:                                             ; preds = %redisAeDelRead.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229
  store i32 0, ptr %i.g, align 8, !tbaa !232
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !231
  tail call void @aeDeleteFileEvent(ptr noundef %i.j, i32 noundef %i.l, i32 noundef 2) #26
  br label %redisAeDelWrite.exit

redisAeDelWrite.exit:                             ; preds = %redisAeDelRead.exit, %bb.c
  tail call void @zfree(ptr noundef nonnull %0) #26
  ret void
}

declare i32 @aeCreateFileEvent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @redisAeReadEvent(ptr readnone captures(none) %0, i32 %1, ptr noundef readonly captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !227
  tail call void @redisAsyncHandleRead(ptr noundef %i.a) #26
  ret void
}

declare void @redisAsyncHandleRead(ptr noundef) local_unnamed_addr #1

declare void @aeDeleteFileEvent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @redisAeWriteEvent(ptr readnone captures(none) %0, i32 %1, ptr noundef readonly captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !227
  tail call void @redisAsyncHandleWrite(ptr noundef %i.a) #26
  ret void
}

declare void @redisAsyncHandleWrite(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_7
