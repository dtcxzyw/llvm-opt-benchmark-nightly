Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/misc_ex?download=true
inline.NumInlined: 132
inline.NumDeleted: 82
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic" = type { i32 }
%"struct.tbb::detail::r1::dynamic_link_descriptor" = type { ptr, ptr, ptr }
%"struct.tbb::detail::r1::default_cgroup_settings" = type { ptr, ptr, ptr }
%"class.tbb::detail::r1::affinity_helper" = type <{ ptr, i32, [4 x i8] }>
%"struct.tbb::detail::r1::cgroup_info<>::process_cgroup_data" = type { i8, [256 x i8] }
%struct.mntent = type { ptr, ptr, ptr, ptr, i32, i32 }

$__clang_call_terminate = comdat any

$_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE21parse_cpu_constraintsERKS3_ = comdat any

$_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE22parse_proc_cgroup_fileEP8_IO_FILERNS4_19process_cgroup_dataEb = comdat any

$_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE27is_cpu_restriction_possibleERNS4_19process_cgroup_dataE = comdat any

$_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE28try_common_cgroup_mount_pathERKNS4_19process_cgroup_dataERKS3_ = comdat any

$_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18parse_cgroup_entryEPKcRNS4_19process_cgroup_dataE = comdat any

$_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE32try_read_cgroup_v2_num_cpus_fromEPKcRi = comdat any

$_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE32try_read_cgroup_v1_num_cpus_fromEPKcRi = comdat any

$_ZZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus = comdat any

$_ZGVZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus = comdat any

@_ZN3tbb6detail2r1L12process_maskE = internal unnamed_addr global ptr null, align 8
@_ZN3tbb6detail2r1L9num_masksE = internal unnamed_addr global i32 0, align 4
@_ZN3tbb6detail2r1L25hardware_concurrency_infoE = internal global %"struct.std::atomic" zeroinitializer, align 4
@_ZN3tbb6detail2r1L11theNumProcsE = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"setaffinity syscall failed\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"getaffinity syscall failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"libiomp5.so\00", align 1
@_ZN3tbb6detail2r1L13iompLinkTableE = internal constant [1 x %"struct.tbb::detail::r1::dynamic_link_descriptor"] [%"struct.tbb::detail::r1::dynamic_link_descriptor" { ptr @.str.3, ptr @_ZN3tbb6detail2r1L35libiomp_try_restoring_original_maskE, ptr null }], align 16
@_ZN3tbb6detail2r1L35libiomp_try_restoring_original_maskE = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"kmp_set_thread_affinity_mask_initial\00", align 1
@_ZZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus = linkonce_odr hidden global i32 0, comdat, align 4
@_ZGVZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus = linkonce_odr hidden global i64 0, comdat, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"/proc/1/cgroup\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"/sys/fs/cgroup/unified\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"%s/cpu.cfs_quota_us\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"%s/cpu.cfs_period_us\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"%s/cpu.max\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%15s %lld\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"/proc/self/mounts\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1

@_ZN3tbb6detail2r115affinity_helperD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3tbb6detail2r115affinity_helperD2Ev

; Function Attrs: mustprogress nounwind sspstrong uwtable
define hidden void @_ZN3tbb6detail2r120destroy_process_maskEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZN3tbb6detail2r1L12process_maskE, align 8, !tbaa !11 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @_ZN3tbb6detail2r1L12process_maskE, align 8, !tbaa !11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind sspstrong uwtable
define hidden void @_ZN3tbb6detail2r115affinity_helperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(12) dereferenceable(12) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4, !tbaa !16
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 7
  %i.g = tail call i32 @sched_setaffinity(i32 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %i.f, ptr noundef nonnull %i.a) #14
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN3tbb6detail2r115runtime_warningEPKcz(ptr noundef nonnull @.str)
          to label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit unwind label %bb.g

_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit: ; preds = %bb.c, %bb.d, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit, %bb.e, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #17
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r115affinity_helper21protect_affinity_maskEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = icmp eq ptr %i.a, null
  %i.c = load i32, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4 ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.c to i64
  %i.f = icmp slt i32 %i.c, 0
  %i.g = shl nsw i64 %i.e, 7
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #18 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !13
  %2 = load i32, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4, !tbaa !16
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 7                          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.i, i8 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %4, i1 noundef false) #14
  %i.j = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %4, ptr noundef nonnull %i.i) #14
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN3tbb6detail2r115runtime_warningEPKcz(ptr noundef nonnull @.str.1)
  br label %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit

_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit: ; preds = %bb.b, %bb.c
  br i1 %1, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit
  %i.k = load ptr, ptr @_ZN3tbb6detail2r1L12process_maskE, align 8, !tbaa !11 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = load i32, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4, !tbaa !16
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 7                      ; 2 uses
  %i.p = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.o) #19 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !15
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @sched_setaffinity(i32 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %i.o, ptr noundef %i.k) #14
  %.not.i2 = icmp eq i32 %i.r, 0
  br i1 %.not.i2, label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN3tbb6detail2r115runtime_warningEPKcz(ptr noundef nonnull @.str)
  br label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !15
  br label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit

_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit: ; preds = %bb.f, %bb.e, %bb.g, %bb.d, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind sspstrong uwtable
define hidden void @_ZN3tbb6detail2r115affinity_helper7dismissEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((8, 12)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef i32 @_ZN3tbb6detail2r122AvailableHwConcurrencyEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.tbb::detail::r1::default_cgroup_settings", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.tbb::detail::r1::affinity_helper", align 8 ; 8 uses
  %i.b = load atomic i32, ptr @_ZN3tbb6detail2r1L25hardware_concurrency_infoE acquire, align 4
  %.not9.i = icmp eq i32 %i.b, 2
  br i1 %.not9.i, label %_ZN3tbb6detail2d014atomic_do_onceIPFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i
  %i.c = load atomic i32, ptr @_ZN3tbb6detail2r1L25hardware_concurrency_infoE monotonic, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = cmpxchg ptr @_ZN3tbb6detail2r1L25hardware_concurrency_infoE, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @sysconf(i32 noundef 84) #14 ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.043.i = phi i32 [ 1, %bb.c ], [ %i.v, %bb.f ] ; 7 uses
  %i.i = sext i32 %.043.i to i64                  ; 2 uses
  %i.j = shl i32 %.043.i, 7
  %i.k = icmp slt i32 %.043.i, 0
  %i.l = shl nsw i64 %i.i, 7
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #18 ; 8 uses
  %i.o = sext i32 %i.j to i64                     ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.n, i8 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %i.o, i1 noundef false) #14
  %i.p = tail call i32 @getpid() #14
  %i.q = tail call i32 @sched_getaffinity(i32 noundef %i.p, i64 noundef %i.o, ptr noundef nonnull %i.n) #14
  %.not.i1 = icmp eq i32 %i.q, 0
  br i1 %.not.i1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__errno_location() #20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %.not52.i = icmp ne i32 %i.s, 22
  %i.t = shl i32 %.043.i, 10
  %i.u = icmp sgt i32 %i.t, 262143
  %or.cond.i = or i1 %i.u, %.not52.i
  br i1 %or.cond.i, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #16
  %i.v = shl i32 %.043.i, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  store i32 %.043.i, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.w = call noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef nonnull @.str.2, ptr noundef nonnull @_ZN3tbb6detail2r1L13iompLinkTableE, i64 noundef 1, ptr noundef nonnull %i.a, i32 noundef 1)
  br i1 %i.w, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr null, ptr %1, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.x, align 8, !tbaa !15
  %i.y = load i32, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4 ; 3 uses
  %.not71.i = icmp eq i32 %i.y, 0
  br i1 %.not71.i, label %_ZN3tbb6detail2r115affinity_helper21protect_affinity_maskEb.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i32 %i.y, 0
  %i.ab = shl nsw i64 %i.z, 7
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #18
          to label %.noexc.i unwind label %bb.n   ; 4 uses

.noexc.i:                                         ; preds = %bb.i
  store ptr %i.ad, ptr %1, align 8, !tbaa !13
  %2 = load i32, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4, !tbaa !16
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 7                          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %4, i1 noundef false) #14
  %i.ae = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %4, ptr noundef nonnull %i.ad) #14
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  invoke void (ptr, ...) @_ZN3tbb6detail2r115runtime_warningEPKcz(ptr noundef nonnull @.str.1)
          to label %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i.i unwind label %bb.n

_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i.i: ; preds = %bb.j, %.noexc.i
  store i32 1, ptr %i.x, align 8, !tbaa !15
  br label %_ZN3tbb6detail2r115affinity_helper21protect_affinity_maskEb.exit.i

_ZN3tbb6detail2r115affinity_helper21protect_affinity_maskEb.exit.i: ; preds = %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i.i, %bb.h
  %i.af = phi i32 [ 0, %bb.h ], [ 1, %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i.i ] ; 2 uses
  %i.ag = phi ptr [ null, %bb.h ], [ %i.ad, %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i.i ] ; 4 uses
  %i.ah = load ptr, ptr @_ZN3tbb6detail2r1L35libiomp_try_restoring_original_maskE, align 8, !tbaa !11
  %i.ai = invoke noundef i32 %i.ah()
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN3tbb6detail2r115affinity_helper21protect_affinity_maskEb.exit.i
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.n, i8 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %i.o, i1 noundef false) #14
  %i.ak = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %i.o, ptr noundef nonnull %i.n) #14
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN3tbb6detail2r115runtime_warningEPKcz(ptr noundef nonnull @.str.1)
          to label %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i unwind label %bb.o

bb.n:                                             ; preds = %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i, %_ZN3tbb6detail2r115affinity_helper21protect_affinity_maskEb.exit.i, %bb.j, %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.p:                                             ; preds = %bb.k
  %i.an = icmp eq ptr %i.ag, null
  br i1 %i.an, label %_ZN3tbb6detail2r115affinity_helper7dismissEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #16
  br label %_ZN3tbb6detail2r115affinity_helper7dismissEv.exit.i

_ZN3tbb6detail2r115affinity_helper7dismissEv.exit.i: ; preds = %bb.q, %bb.p
  store ptr null, ptr %1, align 8, !tbaa !13
  store i32 0, ptr %i.x, align 8, !tbaa !15
  br label %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i

_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i: ; preds = %_ZN3tbb6detail2r115affinity_helper7dismissEv.exit.i, %bb.m, %bb.l
  %i.ao = phi i32 [ 0, %_ZN3tbb6detail2r115affinity_helper7dismissEv.exit.i ], [ %i.af, %bb.m ], [ %i.af, %bb.l ]
  %i.ap = phi ptr [ null, %_ZN3tbb6detail2r115affinity_helper7dismissEv.exit.i ], [ %i.ag, %bb.m ], [ %i.ag, %bb.l ] ; 3 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !11
  invoke void @_ZN3tbb6detail2r114dynamic_unlinkEPv(ptr noundef %i.aq)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %_ZN3tbb6detail2r1L24get_thread_affinity_maskEmP9cpu_set_t.exit.i
  %.not.i58.i = icmp eq ptr %i.ap, null
  br i1 %.not.i58.i, label %_ZN3tbb6detail2r115affinity_helperD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not2.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not2.i.i, label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load i32, ptr @_ZN3tbb6detail2r1L9num_masksE, align 4, !tbaa !16
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 7
  %i.au = call i32 @sched_setaffinity(i32 noundef 0, i64 noundef range(i64 -274877906944, 274877906817) %i.at, ptr noundef nonnull %i.ap) #14
  %.not.i.i59.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i59.i, label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void (ptr, ...) @_ZN3tbb6detail2r115runtime_warningEPKcz(ptr noundef nonnull @.str)
          to label %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit.i.i unwind label %bb.v

_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #16
  br label %_ZN3tbb6detail2r115affinity_helperD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #17
  unreachable

_ZN3tbb6detail2r115affinity_helperD2Ev.exit.i:    ; preds = %_ZN3tbb6detail2r1L24set_thread_affinity_maskEmPK9cpu_set_t.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.x

common.resume.i:                                  ; preds = %bb.aj, %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %bb.w ], [ %i.cc, %bb.aj ]
  resume { ptr, i32 } %common.resume.op.i

bb.w:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.am, %bb.o ]
  call void @_ZN3tbb6detail2r115affinity_helperD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %common.resume.i

bb.x:                                             ; preds = %_ZN3tbb6detail2r115affinity_helperD2Ev.exit.i, %bb.g
  %i.ax = icmp sgt i32 %i.h, 0
  %i.ay = icmp sgt i32 %.043.i, 0
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %.preheader.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.x, %bb.y
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %.079.i = phi i32 [ %spec.select.i, %bb.y ], [ 0, %bb.x ]
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %indvars.iv.i
  br label %bb.z

._crit_edge.i:                                    ; preds = %bb.y, %bb.x
  %.0.lcssa.i = phi i32 [ 0, %bb.x ], [ %spec.select.i, %bb.y ]
  store ptr %i.n, ptr @_ZN3tbb6detail2r1L12process_maskE, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ae

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bb = icmp slt i64 %indvars.iv.next.i, %i.i
  %i.bc = select i1 %i.bl, i1 %i.bb, i1 false
  br i1 %i.bc, label %.preheader.i, label %._crit_edge.i, !llvm.loop !17

bb.z:                                             ; preds = %bb.z, %.preheader.i
  %.077.i = phi i64 [ 0, %.preheader.i ], [ %i.bk, %bb.z ] ; 4 uses
  %.14976.i = phi i32 [ %.079.i, %.preheader.i ], [ %spec.select.i, %bb.z ]
  %i.bd = and i64 %.077.i, 63
  %i.be = lshr i64 %.077.i, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !19
  %i.bh = lshr i64 %i.bg, %i.bd
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1
  %spec.select.i = add nsw i32 %i.bj, %.14976.i   ; 4 uses
  %i.bk = add nuw nsw i64 %.077.i, 1
  %i.bl = icmp slt i32 %spec.select.i, %i.h       ; 2 uses
  %i.bm = icmp samesign ult i64 %.077.i, 1023
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %bb.z, label %bb.y, !llvm.loop !21

bb.aa:                                            ; preds = %bb.e
  %i.bo = icmp eq i32 %i.h, 2147483647
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = tail call i64 @sysconf(i32 noundef 84) #14
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %sext.i = shl i64 %i.g, 32
  %i.bq = ashr exact i64 %sext.i, 32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.br = phi i64 [ %i.bp, %bb.ab ], [ %i.bq, %bb.ac ]
  %i.bs = trunc i64 %i.br to i32
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i
  %.3.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.bs, %bb.ad ]
  %i.bt = call i32 @llvm.smax.i32(i32 %.3.i, i32 1) ; 5 uses
  %i.bu = load atomic i8, ptr @_ZGVZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.af, label %bb.ai, !prof !22

bb.af:                                            ; preds = %bb.ae
  %i.bw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus) #14
  %.not.i60.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i60.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr @.str.20, ptr %0, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.21, ptr %i.bx, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.22, ptr %i.by, align 8, !tbaa !27
  %i.bz = invoke noundef i32 @_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE21parse_cpu_constraintsERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  store i32 %i.bz, ptr @_ZZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus, align 4, !tbaa !16
  %i.ca = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ae
  %i.cb = load i32, ptr @_ZZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus, align 4, !tbaa !16 ; 3 uses
  switch i32 %i.cb, label %bb.ak [
    i32 2147483647, label %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i
    i32 0, label %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i
  ]

bb.aj:                                            ; preds = %bb.ag
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERiE8num_cpus) #14
  br label %common.resume.i

bb.ak:                                            ; preds = %bb.ai
  %i.cd = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.bt)
  br label %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i

_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i: ; preds = %bb.ak, %bb.ai, %bb.ai
  %.065.i = phi i32 [ %i.cd, %bb.ak ], [ %i.bt, %bb.ai ], [ %i.bt, %bb.ai ]
  switch i32 %i.cb, label %bb.al [
    i32 2147483647, label %_ZN3tbb6detail2r1L36initialize_hardware_concurrency_infoEv.exit
    i32 0, label %_ZN3tbb6detail2r1L36initialize_hardware_concurrency_infoEv.exit
  ]

bb.al:                                            ; preds = %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i
  br label %_ZN3tbb6detail2r1L36initialize_hardware_concurrency_infoEv.exit

_ZN3tbb6detail2r1L36initialize_hardware_concurrency_infoEv.exit: ; preds = %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i, %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i, %bb.al
  %.066.i = phi i32 [ %.065.i, %bb.al ], [ %i.bt, %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i ], [ %i.bt, %_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE18is_cpu_constrainedERi.exit.i ]
  store i32 %.066.i, ptr @_ZN3tbb6detail2r1L11theNumProcsE, align 4, !tbaa !16
  store atomic i32 2, ptr @_ZN3tbb6detail2r1L25hardware_concurrency_infoE release, align 4
  br label %_ZN3tbb6detail2d014atomic_do_onceIPFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit

_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.ce = load atomic i32, ptr @_ZN3tbb6detail2r1L25hardware_concurrency_infoE acquire, align 4
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i
  %.sroa.0.09.us.i.i = phi i32 [ %.sroa.0.1.us.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i ], [ 1, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i ] ; 8 uses
  %i.cg = icmp slt i32 %.sroa.0.09.us.i.i, 17
  br i1 %i.cg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.ch = tail call noundef i32 @sched_yield() #14 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.ci = icmp sgt i32 %.sroa.0.09.us.i.i, 0
  br i1 %i.ci, label %.lr.ph.i.i.us.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i

.lr.ph.i.i.us.i.i.preheader:                      ; preds = %bb.an
  %xtraiter = and i32 %.sroa.0.09.us.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol

.lr.ph.i.i.us.i.i.prol:                           ; preds = %.lr.ph.i.i.us.i.i.preheader, %.lr.ph.i.i.us.i.i.prol
  %.01.i.i.us.i.i.prol = phi i32 [ %i.cj, %.lr.ph.i.i.us.i.i.prol ], [ %.sroa.0.09.us.i.i, %.lr.ph.i.i.us.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.preheader ]
  %i.cj = add nsw i32 %.01.i.i.us.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.prol, !llvm.loop !28

.lr.ph.i.i.us.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i.i.prol, %.lr.ph.i.i.us.i.i.preheader
  %.01.i.i.us.i.i.unr = phi i32 [ %.sroa.0.09.us.i.i, %.lr.ph.i.i.us.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.us.i.i.prol ]
  %i.ck = icmp ult i32 %.sroa.0.09.us.i.i, 8
  br i1 %i.ck, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i, label %.lr.ph.i.i.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i
  %.01.i.i.us.i.i = phi i32 [ %i.cl, %.lr.ph.i.i.us.i.i ], [ %.01.i.i.us.i.i.unr, %.lr.ph.i.i.us.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.cl = add nsw i32 %.01.i.i.us.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.cm = icmp sgt i32 %.01.i.i.us.i.i, 8
  br i1 %i.cm, label %.lr.ph.i.i.us.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i, !llvm.loop !30

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i: ; preds = %.lr.ph.i.i.us.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i, %bb.an
  %i.cn = shl i32 %.sroa.0.09.us.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i, %bb.am
  %.sroa.0.1.us.i.i = phi i32 [ %i.cn, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i ], [ %.sroa.0.09.us.i.i, %bb.am ]
  %i.co = load atomic i32, ptr @_ZN3tbb6detail2r1L25hardware_concurrency_infoE acquire, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i, !llvm.loop !31

_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i, %_ZNSt6atomicIN3tbb6detail2d013do_once_stateEE23compare_exchange_strongERS3_S3_St12memory_orderS6_.exit.i
  %i.cq = load atomic i32, ptr @_ZN3tbb6detail2r1L25hardware_concurrency_infoE acquire, align 4
  %.not.i = icmp eq i32 %i.cq, 2
  br i1 %.not.i, label %_ZN3tbb6detail2d014atomic_do_onceIPFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit, label %.lr.ph.i, !llvm.loop !32

_ZN3tbb6detail2d014atomic_do_onceIPFvvEEEvRKT_RSt6atomicINS1_13do_once_stateEE.exit: ; preds = %_ZN3tbb6detail2d015spin_wait_whileINS1_13do_once_stateEZNS1_18spin_wait_while_eqIS3_S3_EET_RKSt6atomicIS5_ET0_St12memory_orderEUlS3_E_EES5_S9_SA_SB_.exit.i, %bb.a, %_ZN3tbb6detail2r1L36initialize_hardware_concurrency_infoEv.exit
  %i.cr = load i32, ptr @_ZN3tbb6detail2r1L11theNumProcsE, align 4, !tbaa !16
  ret i32 %i.cr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN3tbb6detail2r115runtime_warningEPKcz(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @_ZN3tbb6detail2r114dynamic_unlinkEPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef i32 @_ZN3tbb6detail2r111cgroup_infoINS1_23default_cgroup_settingsEE21parse_cpu_constraintsERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.tbb::detail::r1::cgroup_info<>::process_cgroup_data", align 1 ; 9 uses
  %2 = alloca %struct.mntent, align 8             ; 7 uses
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = tail call noalias ptr @fopen(ptr noundef %i.c, ptr noundef nonnull @.str.4) ; 4 uses
  %.not53 = icmp eq ptr %i.d, null
  br i1 %.not53, label %_ZNSt10unique_ptrI8_IO_FILEPFvPS0_EED2Ev.exit32, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
end_hunk_0
