Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hotkeys?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
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
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

@.str = private unnamed_addr constant [58 x i8] c"tracked_metrics & (HOTKEYS_TRACK_CPU | HOTKEYS_TRACK_NET)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"hotkeys.c\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"hotkeys->current_client\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"HOTKEYS subcommand required\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.5 = private unnamed_addr constant [101 x i8] c"START <METRICS count [CPU] [NET]> [COUNT k] [DURATION duration] [SAMPLE ratio] [SLOTS count slot...]\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"    Starts hotkeys tracking with specified metrics.\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"    * METRICS count [CPU] [NET]\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"        Specify count of metrics and choose amongst:\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"        - CPU: Track hotkeys by CPU time percentage\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"        - NET: Track hotkeys by network bytes percentage\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"    * COUNT k\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"        Specifies the value of K for the top-K hotkeys tracking. Default: 10\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"    * DURATION duration\00", align 1
@.str.14 = private unnamed_addr constant [114 x i8] c"        Specifies tracking duration in seconds. 0 means tracking will continue until manually stopped. Default: 0\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"    * SAMPLE ratio\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"        Keys are tracked with probability 1/ratio. Default: 1 (tracks every key)\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"    * SLOTS count slot...\00", align 1
@.str.18 = private unnamed_addr constant [113 x i8] c"        Specify which slots to track keys from. Only available in cluster mode. Default: empty (track all slots)\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"    Stop hotkeys tracking. Results are still available via GET\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"    Get results from hotkeys tracking.\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"    Reset memory used for hotkeys tracking. Tracking must have been stopped.\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"    Results will no longer be available after this command.\00", align 1
@__const.hotkeysCommand.help = private unnamed_addr constant [22 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"hotkey tracking session already in progress\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"METRICS\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"METRICS parameter is required\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"METRICS count must be > 0 and <= %d\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"METRICS CPU defined more than once!\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"NET\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"METRICS NET defined more than once!\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"METRICS count does not match number of metric types provided\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"METRICS no valid metrics passed. Supported: CPU|NET\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"COUNT must be between 1 and 64\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"DURATION\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"DURATION must be between 1 and 1000000\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"SAMPLE\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"SAMPLE ratio must be positive\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"SLOTS\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"SLOTS parameter cannot be used in non-cluster mode\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"SLOTS parameter already specified\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"SLOTS count must be between 1 and %d\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"not enough slot numbers provided\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"slot %ld not handled by this node\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"duplicate slot number\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.51 = private unnamed_addr constant [53 x i8] c"wrong number of arguments for 'hotkeys|stop' command\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"wrong number of arguments for 'hotkeys|get' command\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"server.hotkeys->tracked_metrics\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"tracking-active\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"sample-ratio\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"selected-slots\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"sampled-commands-selected-slots-us\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"all-commands-selected-slots-us\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"all-commands-all-slots-us\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"net-bytes-sampled-commands-selected-slots\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"net-bytes-all-commands-selected-slots\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"net-bytes-all-commands-all-slots\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"collection-start-time-unix-ms\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"collection-duration-ms\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"total-cpu-time-user-ms\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"total-cpu-time-sys-ms\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"total-net-bytes\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"by-cpu-time-us\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"by-net-bytes\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"wrong number of arguments for 'hotkeys|reset' command\00", align 1
@.str.71 = private unnamed_addr constant [57 x i8] c"hotkey tracking session in progress, stop tracking first\00", align 1
@.str.72 = private unnamed_addr constant [48 x i8] c"unknown subcommand or wrong number of arguments\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @hotkeyStatsCreate(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.rusage, align 8             ; 5 uses
  %i.a = and i64 %4, 3
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33) #12
  tail call void @abort() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(232) ptr @zcalloc(i64 noundef 232) #14 ; 15 uses
  %i.c = and i64 %4, 1
  %.not24 = icmp eq i64 %i.c, 0
  br i1 %.not24, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = mul nsw i32 %0, 10
  %i.e = mul i32 %0, 100                          ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %nearestNextPowerOf2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = add i32 %i.e, -1
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.i = sub nuw nsw i32 32, %i.h
  %i.j = shl nuw i32 1, %i.i
  br label %nearestNextPowerOf2.exit

nearestNextPowerOf2.exit:                         ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.j, %bb.e ], [ 1, %bb.d ]
  %i.k = tail call ptr @chkTopKCreate(i32 noundef %i.d, i32 noundef %.0.i, double noundef 1.080000e+00) #12
  store ptr %i.k, ptr %i.b, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %nearestNextPowerOf2.exit, %bb.c
  %i.l = and i64 %4, 2
  %.not25 = icmp eq i64 %i.l, 0
  br i1 %.not25, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = mul nsw i32 %0, 10
  %i.n = mul i32 %0, 100                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %nearestNextPowerOf2.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = add i32 %i.n, -1
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = sub nuw nsw i32 32, %i.q
  %i.s = shl nuw i32 1, %i.r
  br label %nearestNextPowerOf2.exit27

nearestNextPowerOf2.exit27:                       ; preds = %bb.g, %bb.h
  %.0.i26 = phi i32 [ %i.s, %bb.h ], [ 1, %bb.g ]
  %i.t = tail call ptr @chkTopKCreate(i32 noundef %i.m, i32 noundef %.0.i26, double noundef 1.080000e+00) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %nearestNextPowerOf2.exit27, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 %4, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %0, ptr %i.w, align 8, !tbaa !26
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.x, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 %2, ptr %i.z, align 4, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %3, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 1, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 0, ptr %i.ac, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store i32 6, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.a, i8 0, i64 56, i1 false)
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.af = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %5) #12 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret ptr %i.b
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #4

declare ptr @chkTopKCreate(i32 noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @hotkeyStatsRelease(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @chkTopKRelease(ptr noundef nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @chkTopKRelease(ptr noundef nonnull %i.c) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void @slotRangeArrayFree(ptr noundef %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @getKeysFreeResult(ptr noundef nonnull %i.f) #12
  tail call void @zfree(ptr noundef nonnull %0) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare void @chkTopKRelease(ptr noundef) local_unnamed_addr #1

declare void @slotRangeArrayFree(ptr noundef) local_unnamed_addr #1

declare void @getKeysFreeResult(ptr noundef) local_unnamed_addr #1

declare void @zfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @hotkeyStatsPreCurrentCmd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not23 = icmp eq ptr %i.d, null
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in.v = phi i64 [ 88, %bb.d ], [ 108, %bb.c ]
  %i.g = phi ptr [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 %.in.v
  %i.h = load i32, ptr %.in, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 6, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.a, i8 0, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = tail call i32 @getKeysFromCommandWithSpecs(ptr noundef %i.k, ptr noundef %i.g, i32 noundef %i.h, i32 noundef 0, ptr noundef nonnull %i.i) #12
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i32 1, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @rand() #12
  %i.s = sitofp i32 %i.r to double
  %i.t = fdiv double %i.s, f0x41DFFFFFFFC00000
  %i.u = load i32, ptr %i.o, align 4, !tbaa !28
  %i.v = sitofp i32 %i.u to double
  %i.w = fdiv double 1.000000e+00, %i.v
  %i.x = fcmp ult double %i.t, %i.w
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.n, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.y = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.y, align 8, !tbaa !29  ; 2 uses
  %i.z = icmp eq ptr %.val, null
  br i1 %i.z, label %isSlotSelected.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !82
  %i.ac = tail call i32 @slotRangeArrayContains(ptr noundef nonnull %.val, i32 noundef %i.ab) #12
  br label %isSlotSelected.exit

isSlotSelected.exit:                              ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ac, %bb.j ], [ 1, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %.0.i, ptr %i.ad, align 4, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.ae, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %isSlotSelected.exit, %bb.e, %bb.a, %bb.b
  ret void
}

declare i32 @getKeysFromCommandWithSpecs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @hotkeyStatsUpdateCurrentCmd(ptr nofree noundef captures(address_is_null) %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread75, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %.not60 = icmp eq i32 %i.b, 0
  br i1 %.not60, label %.thread75, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.thread75, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1528), align 8, !tbaa !86
  %i.g = icmp eq i32 %i.f, 0
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 220), align 4
  %i.i = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.e, label %.thread75

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %.not61 = icmp eq ptr %i.k, null
  br i1 %.not61, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 120) #12
  tail call void @abort() #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = sext i32 %i.d to i64                     ; 2 uses
  %i.m = udiv i64 %1, %i.l
  %i.n = udiv i64 %2, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !87
  %i.q = add i64 %i.p, %1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !88
  %i.t = add i64 %i.s, %2
  store i64 %i.t, ptr %i.r, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.v = load i32, ptr %i.u, align 4, !tbaa !83
  %.not62 = icmp eq i32 %i.v, 0
  br i1 %.not62, label %.thread75, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !89
  %i.y = add i64 %i.x, %1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !90
  %i.ab = add i64 %i.aa, %2
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !81
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %.thread75, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !91
  %i.aj = add i64 %i.ai, %1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !92
  %i.am = add i64 %i.al, %2
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !92
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.an = tail call i64 @ustime() #12
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !84  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64 ; 2 uses
  %.not66 = icmp eq ptr %i.aq, null
  br i1 %.not66, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.at = phi ptr [ %i.as, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %i.au = icmp sgt i32 %i.d, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.n

._crit_edge:                                      ; preds = %bb.ad, %bb.m
  %i.ay = tail call i64 @ustime() #12
  %i.az = sub nsw i64 %i.ay, %i.an
  %i.ba = sdiv i64 %i.az, 1000
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !93
  %i.bd = add nsw i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !93
  br label %.thread75

bb.n:                                             ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !94
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !95 ; 2 uses
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.bi = and i64 %i.bh, 1
  %.not67 = icmp eq i64 %i.bi, 0
  br i1 %.not67, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %0, align 8, !tbaa !14
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !97
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !98 ; 6 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -1
  %.val.i = load i8, ptr %i.bp, align 1, !tbaa !100 ; 2 uses
  %i.bq = and i8 %.val.i, 7
  switch i8 %i.bq, label %sdslen.exit [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.s
    i8 4, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  %i.br = lshr i8 %.val.i, 3
  %i.bs = zext nneg i8 %i.br to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 -3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !100
  %i.bv = zext i8 %i.bu to i64
  br label %sdslen.exit

bb.r:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds i8, ptr %i.bo, i64 -5
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !101
  %i.by = zext i16 %i.bx to i64
  br label %sdslen.exit

bb.s:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds i8, ptr %i.bo, i64 -9
  %i.ca = load i32, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i32 %i.ca to i64
  br label %sdslen.exit

bb.t:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds i8, ptr %i.bo, i64 -17
  %i.cd = load i64, ptr %i.cc, align 1, !tbaa !63
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi i64 [ %i.cd, %bb.t ], [ %i.bs, %bb.p ], [ %i.bv, %bb.q ], [ %i.by, %bb.r ], [ %i.cb, %bb.s ], [ 0, %bb.o ]
  %i.ce = trunc i64 %.0.i to i32
  %i.cf = tail call ptr @chkTopKUpdate(ptr noundef %i.bj, ptr noundef nonnull %i.bo, i32 noundef %i.ce, i64 noundef %i.m) #12 ; 2 uses
  %.not68 = icmp eq ptr %i.cf, null
  br i1 %.not68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %sdslen.exit
  tail call void @sdsfree(ptr noundef nonnull %i.cf) #12
  br label %bb.v

bb.v:                                             ; preds = %sdslen.exit, %bb.u, %bb.n
  %i.cg = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.ch = and i64 %i.cg, 2
  %.not69 = icmp eq i64 %i.ch, 0
  br i1 %.not69, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.cj = sext i32 %i.bg to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !98 ; 6 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  %.val.i71 = load i8, ptr %i.co, align 1, !tbaa !100 ; 2 uses
  %i.cp = and i8 %.val.i71, 7
  switch i8 %i.cp, label %sdslen.exit73 [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  %i.cq = lshr i8 %.val.i71, 3
  %i.cr = zext nneg i8 %i.cq to i64
  br label %sdslen.exit73

bb.y:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds i8, ptr %i.cn, i64 -3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !100
  %i.cu = zext i8 %i.ct to i64
  br label %sdslen.exit73

bb.z:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds i8, ptr %i.cn, i64 -5
  %i.cw = load i16, ptr %i.cv, align 1, !tbaa !101
  %i.cx = zext i16 %i.cw to i64
  br label %sdslen.exit73

bb.aa:                                            ; preds = %bb.w
  %i.cy = getelementptr inbounds i8, ptr %i.cn, i64 -9
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i32 %i.cz to i64
  br label %sdslen.exit73

bb.ab:                                            ; preds = %bb.w
  %i.db = getelementptr inbounds i8, ptr %i.cn, i64 -17
  %i.dc = load i64, ptr %i.db, align 1, !tbaa !63
  br label %sdslen.exit73

sdslen.exit73:                                    ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.0.i72 = phi i64 [ %i.dc, %bb.ab ], [ %i.cr, %bb.x ], [ %i.cu, %bb.y ], [ %i.cx, %bb.z ], [ %i.da, %bb.aa ], [ 0, %bb.w ]
  %i.dd = trunc i64 %.0.i72 to i32
  %i.de = tail call ptr @chkTopKUpdate(ptr noundef %i.ci, ptr noundef nonnull %i.cn, i32 noundef %i.dd, i64 noundef %i.n) #12 ; 2 uses
  %.not70 = icmp eq ptr %i.de, null
  br i1 %.not70, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %sdslen.exit73
  tail call void @sdsfree(ptr noundef nonnull %i.de) #12
  br label %bb.ad

bb.ad:                                            ; preds = %sdslen.exit73, %bb.ac, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !103

.thread75:                                        ; preds = %bb.h, %bb.g, %._crit_edge, %bb.d, %bb.c, %bb.a, %bb.b
  ret void
}

declare i64 @ustime() local_unnamed_addr #1

declare ptr @chkTopKUpdate(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @sdsfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @hotkeyStatsPostCurrentCmd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @getKeysFreeResult(ptr noundef nonnull %i.c) #12
  store i32 0, ptr %i.c, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 6, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx.a, i8 0, i64 72, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @hotkeysGetMemoryUsage(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not16 = icmp eq ptr %i.a, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @chkTopKGetMemoryUsage(ptr noundef nonnull %i.a) #12
  %i.c = add i64 %i.b, 232
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.c ], [ 232, %bb.b ]   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @chkTopKGetMemoryUsage(ptr noundef nonnull %i.e) #12
  %i.g = add i64 %i.f, %.0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.g, %bb.e ], [ %.0, %bb.d ]   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = add i64 %.1, 4
  %i.n = add i64 %i.m, %i.l
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.011 = phi i64 [ 0, %bb.a ], [ %i.n, %bb.g ], [ %.1, %bb.f ]
  ret i64 %.011
}

declare i64 @chkTopKGetMemoryUsage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @hotkeysCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [22 x ptr], align 16              ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca [64 x i8], align 16               ; 5 uses
  %1 = alloca %struct.rusage, align 8             ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !105  ; 5 uses
  %i.k = icmp slt i32 %i.j, 2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #12
  br label %bb.cw

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98   ; 5 uses
  %i.r = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.4) #15
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, ptr noundef nonnull align 16 dereferenceable(176) @__const.hotkeysCommand.help, i64 176, i1 false)
  call void @addReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.cw

bb.e:                                             ; preds = %bb.c
  %i.s = tail call i32 @strcasecmp(ptr noundef %i.q, ptr noundef nonnull @.str.26) #15
  %.not303 = icmp eq i32 %i.s, 0
  br i1 %.not303, label %bb.f, label %bb.at

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !106 ; 2 uses
  %.not304 = icmp eq ptr %i.t, null
  br i1 %.not304, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30
  %.not305 = icmp eq i32 %i.v, 0
  br i1 %.not305, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #12
  br label %bb.cw

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.w = icmp samesign ult i32 %i.j, 4
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ab = tail call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.28) #15
  %.not306 = icmp eq i32 %i.ab, 0
  br i1 %.not306, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #12
  br label %bb.cw

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.30, i32 noundef 2) #12 ; 0 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.ag = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.af, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %.not307 = icmp eq i32 %i.ag, 0
  br i1 %.not307, label %.preheader385, label %.critedge359

.preheader385:                                    ; preds = %bb.l
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !105 ; 4 uses
  %i.ai = load i64, ptr %i.b, align 8             ; 4 uses
  %i.aj = icmp sgt i32 %i.ah, 4
  %i.ak = icmp sgt i64 %i.ai, 0
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph456, label %._crit_edge457.thread

.lr.ph456:                                        ; preds = %.preheader385
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.an = zext nneg i32 %i.ah to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph456, %bb.s
  %indvars.iv529 = phi i64 [ 0, %.lr.ph456 ], [ %indvars.iv.next530, %bb.s ]
  %indvars.iv527 = phi i64 [ 4, %.lr.ph456 ], [ %indvars.iv.next528, %bb.s ] ; 2 uses
  %.0251455 = phi i64 [ 0, %.lr.ph456 ], [ %.1252, %bb.s ] ; 5 uses
  %.0277452 = phi i32 [ 0, %.lr.ph456 ], [ %.1278, %bb.s ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv527
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 2 uses
  %i.as = call i32 @strcasecmp(ptr noundef %i.ar, ptr noundef nonnull @.str.31) #15
  %.not323 = icmp eq i32 %i.as, 0
  br i1 %.not323, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = and i64 %.0251455, 1
  %.not324 = icmp eq i64 %i.at, 0
  br i1 %.not324, label %bb.o, label %.critedge359.sink.split

bb.o:                                             ; preds = %bb.n
  %i.au = or disjoint i64 %.0251455, 1
  %i.av = add nsw i32 %.0277452, 1
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.aw = call i32 @strcasecmp(ptr noundef %i.ar, ptr noundef nonnull @.str.33) #15
  %.not325 = icmp eq i32 %i.aw, 0
  br i1 %.not325, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ax = and i64 %.0251455, 2
  %.not326 = icmp eq i64 %i.ax, 0
  br i1 %.not326, label %bb.r, label %.critedge359.sink.split

bb.r:                                             ; preds = %bb.q
  %i.ay = or disjoint i64 %.0251455, 2
  %i.az = add nsw i32 %.0277452, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.o
  %.1278 = phi i32 [ %.0277452, %bb.p ], [ %i.az, %bb.r ], [ %i.av, %bb.o ] ; 2 uses
  %.1252 = phi i64 [ %.0251455, %bb.p ], [ %i.ay, %bb.r ], [ %i.au, %bb.o ] ; 2 uses
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 3 uses
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 3 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next528, %i.an
end_hunk_0
