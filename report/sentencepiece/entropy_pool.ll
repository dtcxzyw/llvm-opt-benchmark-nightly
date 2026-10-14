Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/entropy_pool?download=true
inline.NumInlined: 75
inline.NumDeleted: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20260526::base_internal::SpinLockWaitTransition" = type { i32, i32, i8 }
%"class.absl::lts_20260526::base_internal::SpinLockHolder" = type { %"class.std::lock_guard" }
%"class.std::lock_guard" = type { ptr }
%"class.absl::lts_20260526::base_internal::SchedulingHelper" = type <{ i32, i8, [3 x i8] }>

$_ZN4absl12lts_2026052613base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2026052613base_internal16SchedulingHelperD2Ev = comdat any

$_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev = comdat any

$_ZZN4absl12lts_2026052613base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans = comdat any

@_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_112shared_poolsE = internal unnamed_addr global [8 x ptr] zeroinitializer, align 64
@_ZZN4absl12lts_2026052613base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans = linkonce_odr dso_local constant [3 x %"struct.absl::lts_20260526::base_internal::SpinLockWaitTransition"] [%"struct.absl::lts_20260526::base_internal::SpinLockWaitTransition" { i32 0, i32 1707250555, i8 1 }, %"struct.absl::lts_20260526::base_internal::SpinLockWaitTransition" { i32 1707250555, i32 94570706, i8 0 }, %"struct.absl::lts_20260526::base_internal::SpinLockWaitTransition" { i32 221, i32 221, i8 1 }], comdat, align 16
@_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_19pool_onceE = internal global { { i32 } } zeroinitializer, align 4
@_ZZN4absl12lts_2026052615random_internal12_GLOBAL__N_19GetPoolIDEvE8sequence = internal global { i64 } zeroinitializer, align 8
@_ZZN4absl12lts_2026052615random_internal12_GLOBAL__N_19GetPoolIDEvE10my_pool_id = internal thread_local unnamed_addr global i64 8, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::base_internal::SpinLockHolder", align 8 ; 6 uses
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_19pool_onceE acquire, align 4
  %.not.i.i = icmp eq i32 %i.a, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202605269call_onceIRFvvEJEEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052613base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_19pool_onceE, i32 noundef 1, ptr noundef nonnull @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_112InitPoolURBGEv)
  br label %_ZN4absl12lts_202605269call_onceIRFvvEJEEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202605269call_onceIRFvvEJEEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.b, %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4absl12lts_2026052615random_internal12_GLOBAL__N_19GetPoolIDEvE10my_pool_id) ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = icmp eq i64 %i.c, 8
  br i1 %i.d, label %bb.c, label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_123GetPoolForCurrentThreadEv.exit, !prof !33

bb.c:                                             ; preds = %_ZN4absl12lts_202605269call_onceIRFvvEJEEEvRNS0_9once_flagEOT_DpOT0_.exit.i
  %i.e = atomicrmw add ptr @_ZZN4absl12lts_2026052615random_internal12_GLOBAL__N_19GetPoolIDEvE8sequence, i64 1 seq_cst, align 8
  %i.f = and i64 %i.e, 7                          ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !tbaa !32
  br label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_123GetPoolForCurrentThreadEv.exit

_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_123GetPoolForCurrentThreadEv.exit: ; preds = %_ZN4absl12lts_202605269call_onceIRFvvEJEEEvRNS0_9once_flagEOT_DpOT0_.exit.i, %bb.c
  %i.g = phi i64 [ %i.f, %bb.c ], [ %i.c, %_ZN4absl12lts_202605269call_onceIRFvvEJEEEvRNS0_9once_flagEOT_DpOT0_.exit.i ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_112shared_poolsE, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 6 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !34
  %i.k = load atomic i32, ptr %i.j monotonic, align 4 ; 10 uses
  %i.l = and i32 %i.k, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

bb.d:                                             ; preds = %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_123GetPoolForCurrentThreadEv.exit
  %i.m = and i32 %i.k, 2
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %.thread.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.f, label %.thread13.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = or disjoint i32 %i.k, 1
  %i.q = cmpxchg ptr %i.j, i32 %i.k, i32 %i.p acquire monotonic, align 4
  %i.r = extractvalue { i32, i1 } %i.q, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

.thread13.i.i.i.i.i.i:                            ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 76 ; 2 uses
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = add nsw i32 %i.t, 1
  store atomic i32 %i.u, ptr %i.s monotonic, align 4
  %i.v = or i32 %i.k, 5
  %i.w = cmpxchg ptr %i.j, i32 %i.k, i32 %i.v acquire monotonic, align 4 ; 2 uses
  %i.x = extractvalue { i32, i1 } %i.w, 1
  br i1 %i.x, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i, label %bb.g

.thread.i.i.i.i.i.i:                              ; preds = %bb.d
  %i.y = or disjoint i32 %i.k, 1
  %i.z = cmpxchg ptr %i.j, i32 %i.k, i32 %i.y acquire monotonic, align 4
  %i.aa = extractvalue { i32, i1 } %i.z, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

bb.g:                                             ; preds = %.thread13.i.i.i.i.i.i
  %i.ab = extractvalue { i32, i1 } %i.w, 0
  %i.ac = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 76 ; 2 uses
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  %i.af = add nsw i32 %i.ae, -1
  store atomic i32 %i.af, ptr %i.ad monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i.i.i, %.thread13.i.i.i.i.i.i, %bb.f, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_123GetPoolForCurrentThreadEv.exit
  %.04.i.i.i.i.i.i = phi i32 [ %i.k, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_123GetPoolForCurrentThreadEv.exit ], [ %i.ab, %bb.g ], [ %i.r, %bb.f ], [ %i.k, %.thread13.i.i.i.i.i.i ], [ %i.aa, %.thread.i.i.i.i.i.i ]
  %i.ag = and i32 %.04.i.i.i.i.i.i, 1
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i
  tail call void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.j) #14
  br label %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i

_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i: ; preds = %bb.h, %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i
  %.not15.i = icmp eq i64 %1, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 280 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %.pre.i = load i64, ptr %i.ai, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i, %.lr.ph.i
  %i.al = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.ay, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i ]
  %.017.i = phi ptr [ %0, %.lr.ph.i ], [ %i.at, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i ] ; 2 uses
  %.01416.i = phi i64 [ %1, %.lr.ph.i ], [ %i.au, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i ] ; 2 uses
  %i.am = icmp ugt i64 %i.al, 63
  br i1 %i.am, label %bb.j, label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i

bb.j:                                             ; preds = %bb.i
  store i64 4, ptr %i.ai, align 8, !tbaa !20
  %i.an = load i8, ptr %i.ak, align 8, !tbaa !35, !range !21, !noundef !22
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.ap, ptr noundef nonnull align 64 dereferenceable(288) %i.i)
          to label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.ap, ptr noundef nonnull align 64 dereferenceable(288) %i.i)
          to label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i unwind label %bb.m

_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.val.i = load i64, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.aq = shl i64 %.val.i, 2
  %i.ar = sub i64 256, %i.aq
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.01416.i) ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.val.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.017.i, ptr nonnull align 4 %i.as, i64 %.sroa.speculated.i, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.017.i, i64 %.sroa.speculated.i
  %i.au = sub nuw i64 %.01416.i, %.sroa.speculated.i ; 2 uses
  %i.av = add i64 %.sroa.speculated.i, 3
  %i.aw = lshr i64 %i.av, 2
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  store i64 %i.ay, ptr %i.ai, align 8, !tbaa !20
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !30

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10lock_guardIN4absl12lts_2026052613base_internal8SpinLockEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.az

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry11MaybeRefillEv.exit.i, %_ZN4absl12lts_2026052613base_internal14SpinLockHolderC2ERNS1_8SpinLockE.exit.i
  %i.ba = load ptr, ptr %2, align 8, !tbaa !25, !nonnull !22, !align !26 ; 3 uses
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = and i32 %i.bb, 2
  %i.bd = atomicrmw xchg ptr %i.ba, i32 %i.bc release, align 4 ; 3 uses
  %i.be = and i32 %i.bd, 4
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.bf = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc.i.i unwind label %bb.q

.noexc.i.i:                                       ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 76 ; 2 uses
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4
  %i.bi = add nsw i32 %i.bh, -1
  store atomic i32 %i.bi, ptr %i.bg monotonic, align 4
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i, %._crit_edge.i
  %.not4.i.i.i = icmp ult i32 %i.bd, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4FillEPhm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.ba, i32 noundef %i.bd) #14
          to label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4FillEPhm.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #15
  unreachable

_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4FillEPhm.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_112InitPoolURBGEv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal29ReadSeedMaterialFromOSEntropyENS0_4SpanIjEE(ptr nonnull %i.a, i64 512)
  br i1 %i.b, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2026052615random_internal21ThrowSeedGenExceptionEv() #16
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4InitENS0_4SpanIKjEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.preheader:                                       ; preds = %bb.a, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4InitENS0_4SpanIKjEE.exit
  %.010 = phi i64 [ %i.aq, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4InitENS0_4SpanIKjEE.exit ], [ 0, %bb.a ] ; 3 uses
  %i.c = call noalias noundef nonnull align 64 dereferenceable(320) ptr @_ZnwmSt11align_val_t(i64 noundef 320, i64 noundef 64) #17 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(320) %i.c, i8 0, i64 320, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 9 uses
  store i32 2, ptr %i.d, align 64, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  invoke void @_ZN4absl12lts_2026052615random_internal6RandenC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %i.e)
          to label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntryC2Ev.exit unwind label %bb.m

_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntryC2Ev.exit: ; preds = %.preheader
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_112shared_poolsE, i64 %.010
  store ptr %i.c, ptr %i.f, align 8, !tbaa !12
  %.idx = shl nuw nsw i64 %.010, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.h = load atomic i32, ptr %i.d monotonic, align 64 ; 10 uses
  %i.i = and i32 %i.h, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

bb.d:                                             ; preds = %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntryC2Ev.exit
  %i.j = and i32 %i.h, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %.thread.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.f, label %.thread13.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = or disjoint i32 %i.h, 1
  %i.n = cmpxchg ptr %i.d, i32 %i.h, i32 %i.m acquire monotonic, align 4
  %i.o = extractvalue { i32, i1 } %i.n, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

.thread13.i.i.i.i.i.i:                            ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 76 ; 2 uses
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add nsw i32 %i.q, 1
  store atomic i32 %i.r, ptr %i.p monotonic, align 4
  %i.s = or i32 %i.h, 5
  %i.t = cmpxchg ptr %i.d, i32 %i.h, i32 %i.s acquire monotonic, align 4 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i, label %bb.g

.thread.i.i.i.i.i.i:                              ; preds = %bb.d
  %i.v = or disjoint i32 %i.h, 1
  %i.w = cmpxchg ptr %i.d, i32 %i.h, i32 %i.v acquire monotonic, align 4
  %i.x = extractvalue { i32, i1 } %i.w, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

bb.g:                                             ; preds = %.thread13.i.i.i.i.i.i
  %i.y = extractvalue { i32, i1 } %i.t, 0
  %i.z = call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 76 ; 2 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = add nsw i32 %i.ab, -1
  store atomic i32 %i.ac, ptr %i.aa monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i

_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i.i.i, %.thread13.i.i.i.i.i.i, %bb.f, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntryC2Ev.exit
  %.04.i.i.i.i.i.i = phi i32 [ %i.h, %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntryC2Ev.exit ], [ %i.y, %bb.g ], [ %i.o, %bb.f ], [ %i.h, %.thread13.i.i.i.i.i.i ], [ %i.x, %.thread.i.i.i.i.i.i ]
  %i.ad = and i32 %.04.i.i.i.i.i.i, 1
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i
  call void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.d) #14
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i:               ; preds = %bb.h, %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(288) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(256) %i.g, i64 256, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i64 64, ptr %i.af, align 8, !tbaa !20
  %i.ag = load atomic i32, ptr %i.d monotonic, align 64
  %i.ah = and i32 %i.ag, 2
  %i.ai = atomicrmw xchg ptr %i.d, i32 %i.ah release, align 4 ; 3 uses
  %i.aj = and i32 %i.ai, 4
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i
  %i.ak = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 76 ; 2 uses
  %i.am = load atomic i32, ptr %i.al monotonic, align 4
  %i.an = add nsw i32 %i.am, -1
  store atomic i32 %i.an, ptr %i.al monotonic, align 4
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit.i
  %.not4.i.i.i = icmp ult i32 %i.ai, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4InitENS0_4SpanIKjEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.ai) #14
          to label %_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4InitENS0_4SpanIKjEE.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #15
  unreachable

_ZN4absl12lts_2026052615random_internal12_GLOBAL__N_115RandenPoolEntry4InitENS0_4SpanIKjEE.exit: ; preds = %bb.j, %bb.k
  %i.aq = add nuw nsw i64 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, 8
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !37

bb.m:                                             ; preds = %.preheader
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.c, i64 noundef 64) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
