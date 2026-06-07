inline.NumInlined: 99
inline.NumDeleted: 11
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
%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }
%struct.dictType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.dictIterator = type { ptr, i64, i32, i32, ptr, ptr, i64 }
%struct.raxIterator = type { i32, ptr, ptr, ptr, i64, i64, [128 x i8], ptr, %struct.raxStack, ptr, ptr }
%struct.raxStack = type { ptr, i64, i64, [32 x ptr], i32 }

@.str = private unnamed_addr constant [14 x i8] c"bits & maskId\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"object.c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"o->refcount == 1\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"o->type == OBJ_STRING\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Wrong encoding.\00", align 1
@setDictType = external global %struct.dictType, align 8
@zsetDictType = external global %struct.dictType, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"Unknown list encoding type\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Unknown set encoding type\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"You tried to retain an object allocated in the stack\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"You tried to retain an object with maximum refcount\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"illegal decrRefCount for object with: type %u, encoding %u, refcount %d\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Unknown object type\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ql->len != 0\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"dictSize(set) != 0\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"zsl->length != 0\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Unknown zset encoding type\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"dictSize(d) != 0\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Unknown hash encoding type\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Unknown encoding type\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"a->type == OBJ_STRING && b->type == OBJ_STRING\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Unknown string encoding\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"value is not a valid float\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"value is not an integer or out of range\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"value is out of range, value must between %ld and %ld\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"value is out of range, must be positive\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"hashtable\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"quicklist\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"listpack\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"listpackex\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"intset\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"skiplist\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"embstr\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.40 = private unnamed_addr constant [106 x i8] c"Hi Sam, I can't find any memory issue in your instance. I can only account for what occurs on this base.\0A\00", align 1
@.str.41 = private unnamed_addr constant [269 x i8] c"Hi Sam, this instance is empty or is using very little memory, my issues detector can't be used in these conditions. Please, leave for your mission on Earth and fill it with some data. The new Sam and I will be back to our programming as soon as I finished rebooting.\0A\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c"Sam, I detected a few issues in this Redis instance memory implants:\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [641 x i8] c" * Peak memory: In the past this instance used more than 150% the memory that is currently using. The allocator is normally not able to release memory after a peak, so you can expect to see a big fragmentation ratio, however this is actually harmless and is only due to the memory peak, and if the Redis instance Resident Set Size (RSS) is currently bigger than expected, the memory will be used as soon as you fill the Redis instance with more data. If the memory peak was only occasional and you want to try to reclaim memory, please try the MEMORY PURGE command, otherwise the only other option is to shutdown and restart the instance.\0A\0A\00", align 1
@.str.44 = private unnamed_addr constant [627 x i8] c" * High total RSS: This instance has a memory fragmentation and RSS overhead greater than 1.4 (this means that the Resident Set Size of the Redis process is much larger than the sum of the logical allocations Redis performed). This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. If the problem is a large peak memory, then there is no issue. Otherwise, make sure you are using the Jemalloc allocator and not the default libc malloc. Note: The currently used allocator is \22%s\22.\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"jemalloc-5.3.0\00", align 1
@.str.46 = private unnamed_addr constant [358 x i8] c" * High allocator fragmentation: This instance has an allocator external fragmentation greater than 1.1. This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. You can try enabling 'activedefrag' config option.\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [379 x i8] c" * High allocator RSS overhead: This instance has an RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the allocator is much larger than the sum what the allocator actually holds). This problem is usually due to a large peak memory (check if there is a peak memory entry above in the report), you can try the MEMORY PURGE command to reclaim it.\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [265 x i8] c" * High process RSS overhead: This instance has non-allocator RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the Redis process is much larger than the RSS the allocator holds). This problem may be due to Lua scripts or Modules.\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [545 x i8] c" * Big replica buffers: The replica output buffers in this instance are greater than 10MB for each replica (on average). This likely means that there is some replica instance that is struggling receiving data, either because it is too slow or because of networking issues. As a result, data piles on the master output buffers. Please try to identify what replica is not receiving data correctly and why. You can use the INFO output in order to check the replicas delays and the CLIENT LIST command to check the output buffers of each replica.\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [583 x i8] c" * Big client buffers: The clients output buffers in this instance are greater than 200K per client (on average). This may result from different causes, like Pub/Sub clients subscribed to channels bot not receiving data fast enough, so that data piles on the Redis instance output buffer, or clients sending commands with large replies or very large sequences of commands in the same pipeline. Please use the CLIENT LIST command in order to investigate the issue if it causes problems in your instance, or to understand better why certain clients are using a big amount of memory.\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [341 x i8] c" * Many scripts: There seem to be many cached scripts in this instance (more than 1000). This may be because scripts are generated and `EVAL`ed, instead of being parameterized (with KEYS and ARGV), `SCRIPT LOAD`ed and `EVALSHA`ed. Unless `SCRIPT FLUSH` is called periodically, the scripts' caches may end up consuming most of your memory.\0A\0A\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"I'm here to keep you safe, Sam. I want to help you.\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"lfu_freq <= 255\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"ENCODING <key>\00", align 1
@.str.56 = private unnamed_addr constant [80 x i8] c"    Return the kind of internal representation used in order to store the value\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"    associated with a <key>.\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"FREQ <key>\00", align 1
@.str.59 = private unnamed_addr constant [76 x i8] c"    Return the access frequency index of the <key>. The returned integer is\00", align 1
@.str.60 = private unnamed_addr constant [77 x i8] c"    proportional to the logarithm of the recent access frequency of the key.\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"IDLETIME <key>\00", align 1
@.str.62 = private unnamed_addr constant [74 x i8] c"    Return the idle time of the <key>, that is the approximated number of\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"    seconds elapsed since the last access to the key.\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"REFCOUNT <key>\00", align 1
@.str.65 = private unnamed_addr constant [79 x i8] c"    Return the number of references of the value associated with the specified\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"    <key>.\00", align 1
@__const.objectCommand.help = private unnamed_addr constant [13 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr null], align 16
@.str.67 = private unnamed_addr constant [9 x i8] c"refcount\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"idletime\00", align 1
@.str.70 = private unnamed_addr constant [168 x i8] c"An LFU maxmemory policy is selected, idle time not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.72 = private unnamed_addr constant [179 x i8] c"An LFU maxmemory policy is not selected, access frequency not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"DOCTOR\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"    Return memory problems reports.\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"MALLOC-STATS\00", align 1
@.str.76 = private unnamed_addr constant [65 x i8] c"    Return internal statistics report from the memory allocator.\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"PURGE\00", align 1
@.str.78 = private unnamed_addr constant [67 x i8] c"    Attempt to purge dirty pages for reclamation by the allocator.\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"STATS\00", align 1
@.str.80 = private unnamed_addr constant [61 x i8] c"    Return information about the memory usage of the server.\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"USAGE <key> [SAMPLES <count>]\00", align 1
@.str.82 = private unnamed_addr constant [74 x i8] c"    Return memory in bytes used by <key> and its value. Nested values are\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"    sampled up to <count> times (default: 5, 0 means sample all).\00", align 1
@__const.memoryCommand.help = private unnamed_addr constant [12 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr null], align 16
@.str.84 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"peak.allocated\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"total.allocated\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"startup.allocated\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"replication.backlog\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"replica.fullsync.buffer\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"clients.slaves\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"clients.normal\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"cluster.links\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"aof.buffer\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"lua.caches\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"functions.caches\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"script.VMs\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"db.%zd\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"overhead.hashtable.main\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"overhead.hashtable.expires\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"overhead.db.hashtable.lut\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"overhead.db.hashtable.rehashing\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"overhead.total\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"db.dict.rehashing.count\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"keys.count\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"keys.bytes-per-key\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"dataset.bytes\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"dataset.percentage\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"peak.percentage\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"allocator.allocated\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"allocator.active\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"allocator.resident\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"allocator.muzzy\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"allocator-fragmentation.ratio\00", align 1
@.str.116 = private unnamed_addr constant [30 x i8] c"allocator-fragmentation.bytes\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"allocator-rss.ratio\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"allocator-rss.bytes\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"rss-overhead.ratio\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"rss-overhead.bytes\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"fragmentation\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"fragmentation.bytes\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"malloc-stats\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"purge\00", align 1
@.str.127 = private unnamed_addr constant [26 x i8] c"Error purging dirty pages\00", align 1
@switch.table.kvobjSet = private unnamed_addr constant [5 x i8] c"\01\03\05\09\11", align 8
@switch.table.objectCommand = private unnamed_addr constant [13 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.39, ptr @.str.39, ptr @.str.39, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.32, ptr @.str.38, ptr @.str.33, ptr @.str.34], align 8

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @kvobjMetaRef(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %i.e = icmp eq i32 %1, 0
  br i1 %i.e, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw i32 1, %1                        ; 2 uses
  %i.g = and i32 %i.d, %i.f
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add i32 %i.f, -1
  %i.i = and i32 %i.d, %i.h
  %i.j = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.k = zext nneg i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.pn = phi ptr [ %i.m, %bb.d ], [ %0, %bb.a ]
  %.0 = getelementptr inbounds i8, ptr %.pn, i64 -8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kvobjCreate(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 64) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !15 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %1, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %1, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %1, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %1, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.o, %bb.h ], [ %i.m, %bb.g ], [ %i.g, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 127
  %i.q = zext i1 %i.p to i32
  %spec.select = or i32 %3, %i.q
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %sdslen.exit, %bb.c, %bb.d
  %.0.i37 = phi i64 [ %i.d, %bb.d ], [ %.0.i, %sdslen.exit ], [ 0, %bb.c ] ; 3 uses
  %i.r = phi i32 [ %3, %bb.d ], [ %spec.select, %sdslen.exit ], [ %3, %bb.c ] ; 2 uses
  %i.s = trunc i32 %i.r to i16
  %i.t = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.s)
  %i.u = shl nuw nsw i16 %i.t, 3
  %i.v = tail call signext i8 @sdsReqType(i64 noundef %.0.i37) #13 ; 2 uses
  %i.w = and i8 %i.v, 7                           ; 3 uses
  %i.x = icmp samesign ult i8 %i.w, 5
  br i1 %i.x, label %switch.lookup, label %sdsReqSize.exit

switch.lookup:                                    ; preds = %sdslen.exit.thread
  %i.y = zext nneg i8 %i.w to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.kvobjSet, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %sdsReqSize.exit

sdsReqSize.exit:                                  ; preds = %sdslen.exit.thread, %switch.lookup
  %.0.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %sdslen.exit.thread ]
  %i.z = add i64 %.0.i37, 1
  %i.aa = add i64 %i.z, %.0.i.i                   ; 2 uses
  %i.ab = zext nneg i16 %i.u to i64               ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 17
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = tail call noalias ptr @zmalloc(i64 noundef %i.ad) #15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 9 uses
  %i.ag = and i32 %0, 15
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %2, ptr %i.ai, align 8, !tbaa !20
  %i.aj = and i32 %i.r, 255
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 32
  %i.am = or disjoint i64 %i.al, %i.ah
  %i.an = or disjoint i64 %i.am, 2147483904
  store i64 %i.an, ptr %i.af, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ap = shl nuw nsw i8 %i.w, 3
  %switch.shiftamt = zext nneg i8 %i.ap to i64
  %switch.downshift = lshr i64 73165767425, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  store i8 %switch.masked, ptr %i.ao, align 8, !tbaa !15
  %i.ar = tail call ptr @sdsnewplacement(ptr noundef nonnull %i.aq, i64 noundef %i.aa, i8 noundef signext %i.v, ptr noundef nonnull %1, i64 noundef %.0.i37) #13 ; 0 uses
  %i.as = load i64, ptr %i.af, align 8            ; 2 uses
  %i.at = and i64 %i.as, 1090921693184
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !13

bb.i:                                             ; preds = %sdsReqSize.exit
  tail call void @keyMetaResetModuleValues(ptr noundef nonnull %i.af) #13
  %.pre.i = load i64, ptr %i.af, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sdsReqSize.exit
  %i.au = phi i64 [ %.pre.i, %bb.i ], [ %i.as, %sdsReqSize.exit ]
  %i.av = and i64 %i.au, 4294967296
  %.not4.i = icmp eq i64 %i.av, 0
  br i1 %.not4.i, label %keyMetaResetValues.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds i8, ptr %i.af, i64 -8
  store i64 -1, ptr %i.aw, align 8, !tbaa !18
  br label %keyMetaResetValues.exit

keyMetaResetValues.exit:                          ; preds = %bb.j, %bb.k
  ret ptr %i.af
}

declare signext i8 @sdsReqType(i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

declare ptr @sdsnewplacement(ptr noundef, i64 noundef, i8 noundef signext, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createObject(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.b = and i32 %0, 15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !20
  %i.d = or disjoint i32 %i.b, 256
  %i.e = zext nneg i32 %i.d to i64
  store i64 %i.e, ptr %i.a, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @initObjectLRUOrLFU(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 2147483392
  %i.c = icmp eq i64 %i.b, 2147483392
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !23
  %i.e = and i32 %i.d, 2
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @LFUGetTimeInMinutes() #13
  %i.g = shl i64 %i.f, 48
  %i.h = load i64, ptr %0, align 8
  %i.i = or disjoint i64 %i.g, 5497558138880
  %i.j = and i64 %i.h, 1099511627775
  %i.k = or disjoint i64 %i.j, %i.i
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 @LRU_CLOCK() #13
  %i.m = load i64, ptr %0, align 8
  %i.n = and i32 %i.l, 16777215
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 %i.o, 40
  %i.q = and i64 %i.m, 1099511627775
  %i.r = or disjoint i64 %i.p, %i.q
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ %i.k, %bb.c ], [ %i.r, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare i64 @LFUGetTimeInMinutes() local_unnamed_addr #2

declare i32 @LRU_CLOCK() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeObjectShared(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 2147483392
  %i.c = icmp eq i64 %i.b, 256
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 144) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = or i64 %i.a, 2147483392
  store i64 %i.d, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createRawStringObject(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsnewlen(ptr noundef %0, i64 noundef %1) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  store i64 256, ptr %i.b, align 8
  ret ptr %i.b
}

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @createEmbeddedStringObject(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.b = add i64 %1, 20
  %i.c = call ptr @zmalloc_usable(i64 noundef %i.b, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.a, align 8, !tbaa !18
  %i.f = add i64 %i.e, -16
  %i.g = call ptr @sdsnewplacement(ptr noundef nonnull %i.d, i64 noundef %i.f, i8 noundef signext 1, ptr noundef %0, i64 noundef %1) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.c
}

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @kvobjGetKey(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @kvobjGetExpire(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.i = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i64, ptr %.0.i, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kvobjSetExpire(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, -1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !15
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = lshr i64 %i.a, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = and i32 %i.j, 254
  %i.l = or disjoint i32 %i.k, 1
  %i.m = tail call ptr @kvobjSet(ptr noundef nonnull %i.h, ptr noundef nonnull %0, i32 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.09 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.c ]   ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %.09, i64 -8
  store i64 %1, ptr %.0.i, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi ptr [ %.09, %bb.d ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kvobjSet(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i64, ptr %1, align 8                ; 5 uses
  %i.c = and i64 %i.b, 255
  %or.cond = icmp eq i64 %i.c, 128
  br i1 %or.cond, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !15 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.t, %bb.g ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %i.u = getelementptr i8, ptr %0, i64 -1
  %.val.i45 = load i8, ptr %i.u, align 1, !tbaa !15 ; 3 uses
  %i.v = and i8 %.val.i45, 7                      ; 2 uses
  switch i8 %i.v, label %sdslen.exit47 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %sdslen.exit
  %i.w = lshr i8 %.val.i45, 3
  %i.x = zext nneg i8 %i.w to i64
  br label %sdslen.exit47

bb.i:                                             ; preds = %sdslen.exit
  %i.y = getelementptr inbounds i8, ptr %0, i64 -3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = zext i8 %i.z to i64
  br label %sdslen.exit47

bb.j:                                             ; preds = %sdslen.exit
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -5
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !16
  %i.ad = zext i16 %i.ac to i64
  br label %sdslen.exit47

bb.k:                                             ; preds = %sdslen.exit
  %i.ae = getelementptr inbounds i8, ptr %0, i64 -9
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !9
  %i.ag = zext i32 %i.af to i64
  br label %sdslen.exit47

bb.l:                                             ; preds = %sdslen.exit
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -17
  %i.ai = load i64, ptr %i.ah, align 1, !tbaa !18
  br label %sdslen.exit47

sdslen.exit47:                                    ; preds = %sdslen.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i46 = phi i64 [ %i.ai, %bb.l ], [ %i.x, %bb.h ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %i.ag, %bb.k ], [ 0, %sdslen.exit ]
  %i.aj = add i64 %.0.i, 23
  %i.ak = add i64 %i.aj, %.0.i46
  %i.al = icmp ult i64 %i.ak, 65
  br i1 %i.al, label %bb.m, label %bb.v

bb.m:                                             ; preds = %sdslen.exit47
  %i.am = trunc i32 %2 to i16
  %i.an = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.am)
  %i.ao = shl nuw nsw i16 %i.an, 3
  switch i8 %i.v, label %sdslen.exit.i [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.ap = lshr i8 %.val.i45, 3
  %i.aq = zext nneg i8 %i.ap to i64
  br label %sdslen.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds i8, ptr %0, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = zext i8 %i.as to i64
  br label %sdslen.exit.i

bb.p:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds i8, ptr %0, i64 -5
  %i.av = load i16, ptr %i.au, align 1, !tbaa !16
  %i.aw = zext i16 %i.av to i64
  br label %sdslen.exit.i

bb.q:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds i8, ptr %0, i64 -9
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i32 %i.ay to i64
  br label %sdslen.exit.i

bb.r:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds i8, ptr %0, i64 -17
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !18
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i64 [ %i.bb, %bb.r ], [ %i.aq, %bb.n ], [ %i.at, %bb.o ], [ %i.aw, %bb.p ], [ %i.az, %bb.q ], [ 0, %bb.m ] ; 3 uses
  %i.bc = tail call signext i8 @sdsReqType(i64 noundef %.0.i.i) #13 ; 2 uses
  %i.bd = and i8 %i.bc, 7                         ; 3 uses
  %i.be = icmp samesign ult i8 %i.bd, 5
  br i1 %i.be, label %switch.lookup, label %sdsReqSize.exit.i

switch.lookup:                                    ; preds = %sdslen.exit.i
  %i.bf = zext nneg i8 %i.bd to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.kvobjSet, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %sdsReqSize.exit.i

sdsReqSize.exit.i:                                ; preds = %sdslen.exit.i, %switch.lookup
  %.0.i.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %sdslen.exit.i ]
  %i.bg = add i64 %.0.i.i, 1
  %i.bh = add i64 %i.bg, %.0.i.i.i                ; 4 uses
  %i.bi = zext nneg i16 %i.ao to i64              ; 3 uses
  %i.bj = add nuw nsw i64 %i.bi, 21
  %i.bk = add i64 %i.bj, %.0.i
  %i.bl = add i64 %i.bk, %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.bm = call ptr @zmalloc_usable(i64 noundef %i.bl, ptr noundef nonnull %i.a) #13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bi ; 9 uses
  %i.bo = and i32 %2, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 32
  %i.br = or disjoint i64 %i.bq, 2147484032
  store i64 %i.br, ptr %i.bn, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = shl nuw nsw i8 %i.bd, 3
  %switch.shiftamt = zext nneg i8 %i.bt to i64
  %switch.downshift = lshr i64 73165767425, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 17 ; 2 uses
  store i8 %switch.masked, ptr %i.bs, align 8, !tbaa !15
  %i.bv = call ptr @sdsnewplacement(ptr noundef nonnull %i.bu, i64 noundef %i.bh, i8 noundef signext %i.bc, ptr noundef nonnull %0, i64 noundef %.0.i.i) #13 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bh
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !18
  %i.by = add i64 %i.bh, %i.bi
  %reass.sub = sub i64 %i.bx, %i.by
  %i.bz = add i64 %reass.sub, -17
  %i.ca = call ptr @sdsnewplacement(ptr noundef nonnull %i.bw, i64 noundef %i.bz, i8 noundef signext 1, ptr noundef nonnull %i.e, i64 noundef %.0.i) #13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !20
  %i.cc = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.cd = and i64 %i.cc, 1090921693184
  %.not.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !13

bb.s:                                             ; preds = %sdsReqSize.exit.i
  call void @keyMetaResetModuleValues(ptr noundef nonnull %i.bn) #13
  %.pre.i.i = load i64, ptr %i.bn, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %sdsReqSize.exit.i
  %i.ce = phi i64 [ %.pre.i.i, %bb.s ], [ %i.cc, %sdsReqSize.exit.i ]
  %i.cf = and i64 %i.ce, 4294967296
  %.not4.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not4.i.i, label %kvobjCreateEmbedString.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds i8, ptr %i.bn, i64 -8
  store i64 -1, ptr %i.cg, align 8, !tbaa !18
  br label %kvobjCreateEmbedString.exit

kvobjCreateEmbedString.exit:                      ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ad

bb.v:                                             ; preds = %sdslen.exit47
  %i.ch = tail call ptr @sdsnewlen(ptr noundef nonnull %i.e, i64 noundef %.0.i) #13
  %i.ci = tail call ptr @kvobjCreate(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %i.ch, i32 noundef %2)
  br label %bb.ad

bb.w:                                             ; preds = %bb.a
  %i.cj = and i64 %i.b, 2147483392
  %i.ck = icmp eq i64 %i.cj, 256
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20
  store ptr null, ptr %i.cl, align 8, !tbaa !20
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %trunc = trunc i64 %i.b to i8
  switch i8 %trunc, label %bb.ab [
    i8 16, label %bb.z
    i8 0, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cr = tail call ptr @sdsdup(ptr noundef %i.cq) #13
  %.pre = load i64, ptr %1, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 315, ptr noundef nonnull @.str.4) #13
  tail call void @abort() #14
  unreachable

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.x
  %i.cs = phi i64 [ %i.b, %bb.x ], [ %i.b, %bb.z ], [ %.pre, %bb.aa ]
  %.0 = phi ptr [ %i.cm, %bb.x ], [ %i.co, %bb.z ], [ %i.cr, %bb.aa ]
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = and i32 %i.ct, 15
  %i.cv = tail call ptr @kvobjCreate(i32 noundef %i.cu, ptr noundef %0, ptr noundef %.0, i32 noundef %2) ; 3 uses
  %i.cw = load i64, ptr %1, align 8
  %i.cx = and i64 %i.cw, 240
  %i.cy = load i64, ptr %i.cv, align 8
  %i.cz = and i64 %i.cy, -241
  %i.da = or disjoint i64 %i.cz, %i.cx
  store i64 %i.da, ptr %i.cv, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %kvobjCreateEmbedString.exit, %bb.v, %bb.ac
  %.1 = phi ptr [ %i.cv, %bb.ac ], [ %i.bn, %kvobjCreateEmbedString.exit ], [ %i.ci, %bb.v ] ; 4 uses
  %i.db = load i64, ptr %1, align 8
  %i.dc = and i64 %i.db, -1099511627776
  %i.dd = load i64, ptr %.1, align 8
  %i.de = and i64 %i.dd, 1099511627775
  %i.df = or disjoint i64 %i.de, %i.dc
  store i64 %i.df, ptr %.1, align 8
  %i.dg = load i64, ptr %1, align 8
  %i.dh = and i64 %i.dg, 1090921693184
  %.not39 = icmp eq i64 %i.dh, 0
  br i1 %.not39, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @keyMetaTransition(ptr noundef nonnull %1, ptr noundef nonnull %.1) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @decrRefCount(ptr noundef nonnull %1)
  ret ptr %.1
}

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #2

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @keyMetaTransition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decrRefCount(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 8388607                    ; 2 uses
  switch i32 %i.d, label %bb.c [
    i32 8388607, label %bb.r
    i32 0, label %bb.b
  ], !prof !55

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 15
  %i.f = lshr i32 %i.b, 4
  %i.g = and i32 %i.f, 15
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 609, ptr noundef nonnull @.str.12, i32 noundef %i.e, i32 noundef %i.g, i32 noundef 0) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, -1                     ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 8
  %i.k = and i64 %i.a, -2147483393
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %0, align 8
  %i.m = icmp eq i32 %i.h, 0
  br i1 %i.m, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %i.a, 2147483648
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = lshr i64 %i.a, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = and i32 %i.p, 255
  %i.r = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.q)
  %i.s = shl nuw nsw i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 2 uses
  %i.w = and i64 %i.a, 1090921693184
  %.not22 = icmp eq i64 %i.w, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @keyMetaOnFree(ptr noundef nonnull %0) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi ptr [ %i.v, %bb.f ], [ %i.v, %bb.e ], [ %0, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 6 uses
  %.not23 = icmp eq ptr %i.y, null
  br i1 %.not23, label %freeStringObject.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %0, align 8                ; 2 uses
  %i.aa = trunc i64 %i.z to i32
end_hunk_0
