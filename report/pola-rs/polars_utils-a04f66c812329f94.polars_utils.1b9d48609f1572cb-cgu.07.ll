Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_utils-a04f66c812329f94.polars_utils.1b9d48609f1572cb-cgu.07?download=true
inline.NumInlined: 146
inline.NumDeleted: 76
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockjE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2mZqlW55729_12polars_utils, ptr @_RNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockjE5force0E0Cs2mZqlW55729_12polars_utils }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant ptr @_RNvYNCNKNvNtCs4BcJZGCY6Ba_10rayon_core8registry19WORKER_THREAD_STATE0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1f_6option6OptionQIB1U_INtNtB1f_4cell4CellPNtB8_12WorkerThreadEEEEE9call_onceCs2mZqlW55729_12polars_utils, align 8
@4 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0/src/registry.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\004\01\00\006\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E2\00\00\001\00\00\00" }>, align 8
@_RNvNCNKNvNtCs4BcJZGCY6Ba_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL = external thread_local global ptr
@_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE = external global { { { [1 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@7 = private unnamed_addr constant [76 x i8] c"/rustc/48cc71ee88cd0f11217eced958b9930970da998b/library/core/src/num/mod.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"K\00\00\00\00\00\00\00s\05\00\00\05\00\00\00" }>, align 8
@9 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardbEEECs2mZqlW55729_12polars_utils, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsh8eZTKRCwoO_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs2mZqlW55729_12polars_utils }>, align 8
@_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE = external global { { { [6 x i64] } }, { { { i8 } } }, [7 x i8] }
@11 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0/src/latch.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"c\00\00\00\00\00\00\00\07\01\00\00*\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB6_8Registry12catch_unwindNCNvXNtCs2mZqlW55729_12polars_utils4mmapNtB1e_13MMapSemaphoreNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop0EB1g_(ptr nofree noundef nonnull readonly align 128 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !345 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 16               ; 8 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !465
  %.sroa.520.0.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8, !dbg !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !466, !noalias !443
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !467
  %i.f = load <2 x ptr>, ptr %1, align 8, !dbg !465
  store <2 x ptr> %i.f, ptr %i.e, align 16, !dbg !467
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !467 ; 2 uses
  store i64 %.sroa.520.0.copyload, ptr %.sroa.9.0..sroa_idx15, align 16, !dbg !467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !dbg !466
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, i64 8) acquire, align 8, !dbg !468, !noalias !450
  %i.h = icmp eq i32 %i.g, 0, !dbg !469
  br i1 %i.h, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i, label %bb.b, !dbg !469, !prof !210

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !470, !noalias !450
  store ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, ptr %i.c, align 8, !dbg !471, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !472, !noalias !450
  store ptr %i.c, ptr %i.b, align 8, !dbg !472, !noalias !450
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !473, !noalias !450

.noexc.i.i.i:                                     ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !474, !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !475, !noalias !450
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i, !dbg !475

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.i = load i64, ptr @_RNvNtCs2mZqlW55729_12polars_utils3mem9PAGE_SIZE, align 8, !dbg !476, !noalias !450, !noundef !183 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !477
  br i1 %i.j, label %bb.d, label %bb.c, !dbg !477

bb.c:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i
  %i.k = urem i64 33554432, %i.i, !dbg !477       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !478
  %i.m = add i64 %i.i, 33554432, !dbg !478
  %i.n = sub i64 %i.m, %i.k, !dbg !478
  %.sroa.0.0.i.i.i = select i1 %i.l, i64 33554432, i64 %i.n, !dbg !478 ; 3 uses
  %i.o = load i64, ptr %.sroa.9.0..sroa_idx15, align 16, !dbg !479, !alias.scope !449, !noalias !443, !noundef !183 ; 3 uses
  %i.p = icmp ugt i64 %i.o, %.sroa.0.0.i.i.i, !dbg !479
  br i1 %i.p, label %.lr.ph.preheader.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i, !dbg !479

bb.d:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockjE5force0ECs2mZqlW55729_12polars_utils.exit.i.i.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.e unwind label %bb.f, !dbg !477, !noalias !450

bb.e:                                             ; preds = %bb.d
  unreachable

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !480, !noalias !450
  %i.q = load ptr, ptr %i.e, align 16, !dbg !480, !alias.scope !449, !noalias !443, !noundef !183
  %i.r = load i64, ptr %.sroa.7.0..sroa_idx13, align 8, !dbg !480, !alias.scope !449, !noalias !443, !noundef !183
  store ptr %i.q, ptr %i.d, align 8, !dbg !480, !noalias !450
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !480
  store i64 %i.r, ptr %i.s, align 8, !dbg !480, !noalias !450
  invoke void @_RNvXs_NtCs61SnqI2q75L_7memmap22osNtB4_9MmapInnerNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc unwind label %bb.h, !dbg !481

.noexc:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !482, !noalias !450
  br label %.loopexit, !dbg !483

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.t = load ptr, ptr %i.e, align 16, !dbg !484, !alias.scope !449, !noalias !443, !noundef !183
  br label %.lr.ph.i.i.i, !dbg !485

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.03.018.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.u = sub nuw i64 %i.o, %.sroa.03.018.i.i.i, !dbg !486
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i, i64 %i.u), !dbg !487
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.03.018.i.i.i, !dbg !488
  %i.w = call noundef i32 @munmap(ptr noundef %i.v, i64 noundef %.sroa.0.0.i.i.i.i) #23, !dbg !489, !noalias !450 ; 0 uses
  %i.x = add i64 %.sroa.03.018.i.i.i, %.sroa.0.0.i.i.i, !dbg !490 ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.o, !dbg !485
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit, !dbg !485

bb.f:                                             ; preds = %bb.d, %bb.b
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RNvXs_NtCs61SnqI2q75L_7memmap22osNtB4_9MmapInnerNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.g, !dbg !491, !noalias !443

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !492, !noalias !443
  unreachable, !dbg !492

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs61SnqI2q75L_7memmap24MmapECs2mZqlW55729_12polars_utils.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null, !dbg !493
  br label %.body, !dbg !493

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %lpad.thr_comm.i.i.i, %bb.f ]
  %i.ab = extractvalue { ptr, i32 } %eh.lpad-body, 0, !dbg !493
  %i.ac = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ab)
          to label %bb.j unwind label %bb.i, !dbg !494 ; 2 uses

bb.i:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer, !dbg !493 ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #24, !dbg !495
  unreachable, !dbg !495

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !496, !noalias !443
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit, !dbg !497

bb.j:                                             ; preds = %.body
  %i.ae = extractvalue { ptr, ptr } %i.ac, 0, !dbg !494 ; 6 uses
  %i.af = extractvalue { ptr, ptr } %i.ac, 1, !dbg !494 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae), "nonnull"(ptr %i.af) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !498
  %i.ah = load ptr, ptr %i.ag, align 32, !dbg !498, !noundef !183 ; 2 uses
  %.not = icmp eq ptr %i.ah, null, !dbg !498
  br i1 %.not, label %bb.l, label %bb.k, !dbg !499

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.q, %bb.p, %bb.k, %.loopexit
  ret void, !dbg !500

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !498
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !501, !nonnull !183, !align !218, !noundef !183
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40, !dbg !502
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !502, !invariant.load !183, !nonnull !183
  invoke void %i.al(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit unwind label %bb.m, !dbg !502

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXNtCs4BcJZGCY6Ba_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit unwind label %bb.t, !dbg !503

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs4BcJZGCY6Ba_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %common.resume unwind label %bb.n, !dbg !504

bb.n:                                             ; preds = %bb.m, %bb.t
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !505
  unreachable, !dbg !505

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.l
  %i.ao = load ptr, ptr %i.af, align 8, !dbg !506, !invariant.load !183 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null, !dbg !506
  br i1 %.not.i, label %bb.p, label %bb.o, !dbg !506

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit
  invoke void %i.ao(ptr noundef nonnull %i.ae)
          to label %bb.p unwind label %bb.r, !dbg !506

bb.p:                                             ; preds = %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core6unwind12AbortIfPanicECs2mZqlW55729_12polars_utils.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !507
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !507, !range !227, !invariant.load !183 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !508
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit, label %bb.q, !dbg !508

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !507
  %i.at = load i64, ptr %i.as, align 8, !dbg !509, !range !228, !invariant.load !183
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #23, !dbg !510
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils.exit, !dbg !511

bb.r:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !512
  %i.aw = load i64, ptr %i.av, align 8, !dbg !512, !range !227, !invariant.load !183 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !513
  br i1 %i.ax, label %common.resume, label %bb.s, !dbg !513

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !512
  %i.az = load i64, ptr %i.ay, align 8, !dbg !514, !range !228, !invariant.load !183
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #23, !dbg !515
  br label %common.resume, !dbg !516

common.resume:                                    ; preds = %bb.t, %bb.m, %bb.r, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.au, %bb.s ], [ %i.ba, %bb.t ], [ %i.am, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !517

bb.t:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils(ptr nonnull %i.ae, ptr nonnull %i.af) #25
          to label %common.resume unwind label %bb.n, !dbg !518
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !519 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [640 x i8], align 128             ; 19 uses
  %i.e = alloca [104 x i8], align 8               ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 4 uses
  %i.g = alloca [384 x i8], align 128             ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [104 x i8], align 16              ; 14 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [88 x i8], align 8                ; 16 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.537 = alloca [27 x i8], align 1          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 12 uses
  %i.r = alloca [48 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [1 x i8], align 1                 ; 4 uses
  %i.z = invoke noundef i64 @_RNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
          to label %bb.c unwind label %bb.f, !dbg !942

bb.b:                                             ; preds = %bb.bf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECs2mZqlW55729_12polars_utils.exit, %bb.f, %.thread145
  %.pn47.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn99148, %.thread145 ], [ %i.ao, %bb.f ], [ %.pn47.pn.pn.pn, %bb.bf ], [ %.pn47.pn.pn.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECs2mZqlW55729_12polars_utils.exit ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core17ThreadPoolBuilderECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(96) %1) #25
          to label %bb.bp unwind label %bb.bj, !dbg !943

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 65535), !dbg !944 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !945
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 89, !dbg !946
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !946, !range !236, !noundef !183
  store i8 %i.ab, ptr %i.y, align 1, !dbg !946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !947
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !948
  store i64 0, ptr %i.ac, align 8, !dbg !948
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !948
  store i64 %.sroa.0.0.i, ptr %i.ad, align 8, !dbg !948
  store ptr %i.y, ptr %i.u, align 8, !dbg !948
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3n_EIB4P_B4u_EECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u)
          to label %bb.d unwind label %bb.f, !dbg !949

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !952
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !954
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3p_EIB4R_B4w_EECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, i64 noundef 0, i64 noundef %.sroa.0.0.i)
          to label %bb.e unwind label %bb.bo, !dbg !955

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !957
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !dbg !957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !960
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !960
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !960, !nonnull !183, !noundef !183 ; 3 uses
  %i.ai = load i64, ptr %i.w, align 8, !dbg !960, !range !227, !noundef !183
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !960
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !960, !noundef !183 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 576460752303423488, !dbg !961
  call void @llvm.assume(i1 %i.al), !dbg !962
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ak, !dbg !963
  store ptr %i.ah, ptr %i.o, align 8, !dbg !964
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !964
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !964
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !964
  store i64 %i.ai, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !964
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !964
  store ptr %i.am, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !964
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.g unwind label %.thread118, !dbg !965

.thread118:                                       ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread100, !dbg !966

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.bh
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.b, !dbg !966

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !967
  invoke void @_RNvMNtCs4BcJZGCY6Ba_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, i64 noundef %.sroa.0.0.i)
          to label %bb.j unwind label %bb.i, !dbg !967

bb.h:                                             ; preds = %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.as, %bb.l ], [ %i.ap, %bb.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24) %i.p) #25
          to label %.thread100 unwind label %bb.bj, !dbg !968

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !969
  %i.aq = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #23, !dbg !970 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null, !dbg !971
  br i1 %i.ar, label %bb.k, label %_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCs2mZqlW55729_12polars_utils.exit, !dbg !971, !prof !246
end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECs2mZqlW55729_12polars_utils:bb.a
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit.i unwind label %bb.m, !dbg !1551

.body23.i:                                        ; preds = %bb.m, %bb.k, %.body21.i
  %.pn4.i = phi { ptr, i32 } [ %.pn.i, %.body21.i ], [ %i.aa, %bb.m ], [ %i.w, %bb.k ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !1525
  %.val11.i = load ptr, ptr %i.y, align 32, !dbg !1525, !alias.scope !1523, !noundef !183
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 424, !dbg !1525
  %.val12.i = load ptr, ptr %i.z, align 8, !dbg !1525, !alias.scope !1523
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils(ptr %.val11.i, ptr %.val12.i) #25
          to label %.body26.i unwind label %bb.af, !dbg !1525

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !1525
  %.val.i = load ptr, ptr %i.ab, align 32, !dbg !1525, !alias.scope !1523, !noundef !183 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 424, !dbg !1525
  %.val10.i = load ptr, ptr %i.ac, align 8, !dbg !1525, !alias.scope !1523 ; 6 uses
  %i.ad = icmp eq ptr %.val.i, null, !dbg !1552
  br i1 %i.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i, label %bb.n, !dbg !1552

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.ae = load ptr, ptr %.val10.i, align 8, !dbg !1553, !invariant.load !183 ; 2 uses
  %.not.i.i25.i = icmp eq ptr %i.ae, null, !dbg !1553
  br i1 %.not.i.i25.i, label %bb.p, label %bb.o, !dbg !1553

bb.o:                                             ; preds = %bb.n
  invoke void %i.ae(ptr noundef nonnull %.val.i)
          to label %bb.p unwind label %bb.r, !dbg !1553

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8, !dbg !1554
  %i.ag = load i64, ptr %i.af, align 8, !dbg !1554, !range !227, !invariant.load !183 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !1555
  br i1 %i.ah, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i, label %bb.q, !dbg !1555

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16, !dbg !1554
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !1556, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #23, !dbg !1557
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i, !dbg !1558

bb.r:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8, !dbg !1559
  %i.am = load i64, ptr %i.al, align 8, !dbg !1559, !range !227, !invariant.load !183 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !1560
  br i1 %i.an, label %.body26.i, label %bb.s, !dbg !1560

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16, !dbg !1559
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !1561, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #23, !dbg !1562
  br label %.body26.i, !dbg !1563

.body26.i:                                        ; preds = %bb.s, %bb.r, %.body23.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body23.i ], [ %i.ak, %bb.r ], [ %i.ak, %bb.s ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 432, !dbg !1525
  %.val19.i = load ptr, ptr %i.aq, align 16, !dbg !1525, !alias.scope !1523, !noundef !183
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !1525
  %.val20.i = load ptr, ptr %i.ar, align 8, !dbg !1525, !alias.scope !1523
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils(ptr %.val19.i, ptr %.val20.i) #25
          to label %.body29.i unwind label %bb.af, !dbg !1525

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i: ; preds = %bb.q, %bb.p, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 432, !dbg !1525
  %.val17.i = load ptr, ptr %i.as, align 16, !dbg !1525, !alias.scope !1523, !noundef !183 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !1525
  %.val18.i = load ptr, ptr %i.at, align 8, !dbg !1525, !alias.scope !1523 ; 6 uses
  %i.au = icmp eq ptr %.val17.i, null, !dbg !1564
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i, label %bb.t, !dbg !1564

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i) ]
  %i.av = load ptr, ptr %.val18.i, align 8, !dbg !1565, !invariant.load !183 ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.av, null, !dbg !1565
  br i1 %.not.i.i28.i, label %bb.v, label %bb.u, !dbg !1565

bb.u:                                             ; preds = %bb.t
  invoke void %i.av(ptr noundef nonnull %.val17.i)
          to label %bb.v unwind label %bb.x, !dbg !1565

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8, !dbg !1566
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !1566, !range !227, !invariant.load !183 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0, !dbg !1567
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i, label %bb.w, !dbg !1567

bb.w:                                             ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16, !dbg !1566
  %i.ba = load i64, ptr %i.az, align 8, !dbg !1568, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, -9223372036854775808) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #23, !dbg !1569
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i, !dbg !1570

bb.x:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8, !dbg !1571
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !1571, !range !227, !invariant.load !183 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0, !dbg !1572
  br i1 %i.be, label %.body29.i, label %bb.y, !dbg !1572

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16, !dbg !1571
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !1573, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, -9223372036854775808) %i.bd, i64 noundef range(i64 1, 536870913) %i.bg) #23, !dbg !1574
  br label %.body29.i, !dbg !1575

.body29.i:                                        ; preds = %bb.y, %bb.x, %.body26.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body26.i ], [ %i.bb, %bb.x ], [ %i.bb, %bb.y ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 448, !dbg !1525
  %.val15.i = load ptr, ptr %i.bh, align 64, !dbg !1525, !alias.scope !1523, !noundef !183
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 456, !dbg !1525
  %.val16.i = load ptr, ptr %i.bi, align 8, !dbg !1525, !alias.scope !1523
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils(ptr %.val15.i, ptr %.val16.i) #25
          to label %common.resume.i unwind label %bb.af, !dbg !1525

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i: ; preds = %bb.w, %bb.v, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 448, !dbg !1525
  %.val13.i = load ptr, ptr %i.bj, align 64, !dbg !1525, !alias.scope !1523, !noundef !183 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 456, !dbg !1525
  %.val14.i = load ptr, ptr %i.bk, align 8, !dbg !1525, !alias.scope !1523 ; 6 uses
  %i.bl = icmp eq ptr %.val13.i, null, !dbg !1576
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryECs2mZqlW55729_12polars_utils.exit, label %bb.z, !dbg !1576

bb.z:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %i.bm = load ptr, ptr %.val14.i, align 8, !dbg !1577, !invariant.load !183 ; 2 uses
  %.not.i.i31.i = icmp eq ptr %i.bm, null, !dbg !1577
  br i1 %.not.i.i31.i, label %bb.ab, label %bb.aa, !dbg !1577

bb.aa:                                            ; preds = %bb.z
  invoke void %i.bm(ptr noundef nonnull %.val13.i)
          to label %bb.ab unwind label %bb.ad, !dbg !1577

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8, !dbg !1578
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !1578, !range !227, !invariant.load !183 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0, !dbg !1579
  br i1 %i.bp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryECs2mZqlW55729_12polars_utils.exit, label %bb.ac, !dbg !1579

bb.ac:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16, !dbg !1578
  %i.br = load i64, ptr %i.bq, align 8, !dbg !1580, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef range(i64 1, -9223372036854775808) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #23, !dbg !1581
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryECs2mZqlW55729_12polars_utils.exit, !dbg !1582

bb.ad:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8, !dbg !1583
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !1583, !range !227, !invariant.load !183 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0, !dbg !1584
  br i1 %i.bv, label %common.resume.i, label %bb.ae, !dbg !1584

bb.ae:                                            ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16, !dbg !1583
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !1585, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef range(i64 1, -9223372036854775808) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #23, !dbg !1586
  br label %common.resume.i, !dbg !1587

common.resume.i:                                  ; preds = %bb.ae, %bb.ad, %.body29.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bs, %bb.ad ], [ %i.bs, %bb.ae ], [ %.pn8.i, %.body29.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1525

bb.af:                                            ; preds = %.body29.i, %.body26.i, %.body23.i, %.body21.i, %.body.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !1525
  unreachable, !dbg !1525

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryECs2mZqlW55729_12polars_utils.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit.i, %bb.ab, %bb.ac
  ret void, !dbg !1524
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs2mZqlW55729_12polars_utils(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !1606, !invariant.load !183 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !1606
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1606

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !1606

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !1607
  %i.c = load i64, ptr %i.b, align 8, !dbg !1607, !range !227, !invariant.load !183 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !1608
  br i1 %i.d, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit, label %bb.d, !dbg !1608

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !1607
  %i.f = load i64, ptr %i.e, align 8, !dbg !1609, !range !228, !invariant.load !183
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23, !dbg !1610
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit, !dbg !1611

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !1606

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !1612
  %i.i = load i64, ptr %i.h, align 8, !dbg !1612, !range !227, !invariant.load !183 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !1613
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit4, label %bb.f, !dbg !1613

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !1612
  %i.l = load i64, ptr %i.k, align 8, !dbg !1614, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23, !dbg !1615
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit4, !dbg !1616

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !1606
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardbEEECs2mZqlW55729_12polars_utils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !1617 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !1631, !nonnull !183, !align !271, !noundef !183 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1631
  %.val1 = load i8, ptr %i.a, align 8, !dbg !1631, !range !236, !noundef !183
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !1632
  %i.c = trunc nuw i8 %.val1 to i1, !dbg !1633
  br i1 %i.c, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b, !dbg !1633

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1634
  %i.e = and i64 %i.d, 9223372036854775807, !dbg !1635
  %i.f = icmp eq i64 %i.e, 0, !dbg !1635
  br i1 %i.f, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !dbg !1635, !prof !210

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !1636
  br i1 %i.g, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d, !dbg !1637

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4, !dbg !1638
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !1639

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4, !dbg !1640
  %i.i = icmp eq i32 %i.h, 2, !dbg !1641
  br i1 %i.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEECs2mZqlW55729_12polars_utils.exit, !dbg !1641, !prof !246

bb.e:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val), !dbg !1642
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEECs2mZqlW55729_12polars_utils.exit, !dbg !1642

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEECs2mZqlW55729_12polars_utils.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void, !dbg !1631
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1H_INtB2x_7StealerB3h_EEEEECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30 {
bb.a:
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1f_INtB25_7StealerB2P_EEEECs2mZqlW55729_12polars_utils.exit unwind label %bb.b, !dbg !1647

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1648
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit.i unwind label %bb.c, !dbg !1649

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !1648
  unreachable, !dbg !1648

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !1648

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1f_INtB25_7StealerB2P_EEEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1648
  tail call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d), !dbg !1650
  ret void, !dbg !1651
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardbEECs2mZqlW55729_12polars_utils(ptr %.0.val, i8 %.8.val) unnamed_addr #0 !dbg !33 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4, !dbg !1664
  %i.b = trunc nuw i8 %.8.val to i1, !dbg !1665
  br i1 %i.b, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b, !dbg !1665

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1666
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !1667
  %i.e = icmp eq i64 %i.d, 0, !dbg !1667
  br i1 %i.e, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !dbg !1667, !prof !210

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !1668
  br i1 %i.f, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d, !dbg !1669

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1, !dbg !1670
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i, !dbg !1671

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4, !dbg !1672
  %i.h = icmp eq i32 %i.g, 2, !dbg !1673
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit, !dbg !1673, !prof !246

bb.e:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val), !dbg !1674
  br label %_RNvXsc_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit, !dbg !1674

_RNvXsc_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void, !dbg !1675
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !105 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1680 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit unwind label %bb.b, !dbg !1681

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit.i.i unwind label %bb.c, !dbg !1682

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #24, !dbg !1681
  unreachable, !dbg !1681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !1681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !1683
  ret void, !dbg !1680
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core17ThreadPoolBuilderECs2mZqlW55729_12polars_utils(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1684 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1765
  %.val = load ptr, ptr %i.a, align 8, !dbg !1765, !noundef !183 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1765
  %.val4 = load ptr, ptr %i.b, align 8, !dbg !1765 ; 6 uses
  %i.c = icmp eq ptr %.val, null, !dbg !1766
  br i1 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit, label %bb.b, !dbg !1766

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.d = load ptr, ptr %.val4, align 8, !dbg !1767, !invariant.load !183 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null, !dbg !1767
  br i1 %.not.i.i, label %bb.d, label %bb.c, !dbg !1767

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f, !dbg !1767

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !1768
  %i.f = load i64, ptr %i.e, align 8, !dbg !1768, !range !227, !invariant.load !183 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !1769
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit, label %bb.e, !dbg !1769

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 16, !dbg !1768
  %i.i = load i64, ptr %i.h, align 8, !dbg !1770, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #23, !dbg !1771
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIB13_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2o_NtB2q_4SyncEL_EEECs2mZqlW55729_12polars_utils.exit, !dbg !1772

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !1773
  %i.l = load i64, ptr %i.k, align 8, !dbg !1773, !range !227, !invariant.load !183 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !1774
  br i1 %i.m, label %.body, label %bb.g, !dbg !1774

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 16, !dbg !1773
  %i.o = load i64, ptr %i.n, align 8, !dbg !1775, !range !228, !invariant.load !183
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23, !dbg !1776
  br label %.body, !dbg !1777

.body:                                            ; preds = %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1765
  %.val7 = load ptr, ptr %i.p, align 8, !dbg !1765, !noundef !183
end_hunk_1
