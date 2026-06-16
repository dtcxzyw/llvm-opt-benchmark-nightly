inline.NumInlined: 86
inline.NumDeleted: 39
begin_hunk_0_@_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv26.i ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv26.i
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !36
  store ptr %i.b, ptr %i.br, align 8, !tbaa !36
  %indvars.iv.next27.i = or disjoint i64 %indvars.iv26.i, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next27.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next27.i ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next27.i
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !36
  store ptr %i.b, ptr %i.bx, align 8, !tbaa !36
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !50

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, %.lr.ph23.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next27.i.1, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i32 %.lcssa.i25 to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i.epil.init
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv26.i.epil.init ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv26.i.epil.init
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !36
  store ptr %i.b, ptr %i.cd, align 8, !tbaa !36
  br label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit: ; preds = %.epil.preheader, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, %.preheader.i
  %i.cg = xor i64 %i.e, -1283669654
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !39
  tail call fastcc void @_ZN4absl12lts_2025051213base_internalL8CoalesceEPNS1_12_GLOBAL__N_19AllocListE(ptr noundef nonnull %i.b)
  %i.ch = load ptr, ptr %i.a, align 16, !tbaa !36
  tail call fastcc void @_ZN4absl12lts_2025051213base_internalL8CoalesceEPNS1_12_GLOBAL__N_19AllocListE(ptr noundef %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc5AllocEm(i64 noundef %0) local_unnamed_addr #4 section "malloc_hook" align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_119create_globals_onceE acquire, align 4
  %.not.i.i = icmp eq i32 %i.a, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213base_internal13LowLevelAlloc12DefaultArenaEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = cmpxchg ptr @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_119create_globals_onceE, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread.i.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i: ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_119create_globals_onceE, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvvEJEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 0)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread.i.i, label %_ZN4absl12lts_2025051213base_internal13LowLevelAlloc12DefaultArenaEv.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread.i.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i, %bb.b
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaC1Ej(ptr noundef nonnull align 8 dereferenceable(324) @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_121default_arena_storageE, i32 noundef 1)
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaC1Ej(ptr noundef nonnull align 8 dereferenceable(324) @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_122unhooked_arena_storageE, i32 noundef 0)
  tail call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaC1Ej(ptr noundef nonnull align 8 dereferenceable(324) @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_137unhooked_async_sig_safe_arena_storageE, i32 noundef 2)
  %i.f = atomicrmw xchg ptr @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_119create_globals_onceE, i32 221 release, align 4
  %i.g = icmp eq i32 %i.f, 94570706
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_2025051213base_internal13LowLevelAlloc12DefaultArenaEv.exit

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread.i.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_119create_globals_onceE, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2025051213base_internal13LowLevelAlloc12DefaultArenaEv.exit

_ZN4absl12lts_2025051213base_internal13LowLevelAlloc12DefaultArenaEv.exit: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.i.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_order.exit.thread.i.i, %bb.c
  %i.h = tail call fastcc noundef ptr @_ZN4absl12lts_2025051213base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE(i64 noundef %0, ptr noundef nonnull @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_121default_arena_storageE)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2025051213base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE(i64 noundef %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::base_internal::(anonymous namespace)::ArenaLock", align 8 ; 9 uses
  %i.a = alloca [30 x ptr], align 16              ; 6 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i8 0, ptr %3, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.b, align 1, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.g = call i32 @sigfillset(ptr noundef nonnull %2) #13 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %i.h) #13
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.b, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %.pre.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.m = load atomic i32, ptr %i.l monotonic, align 4 ; 3 uses
  %i.n = and i32 %i.m, 1
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.d
  %i.o = or disjoint i32 %i.m, 1
  %i.p = cmpxchg ptr %i.l, i32 %i.m, i32 %i.o acquire monotonic, align 4
  %i.q = extractvalue { i32, i1 } %i.p, 0
  %.pre.i.i.i = and i32 %i.q, 1
  %i.r = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.r, label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.d
  call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.l) #14
  br label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit

_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %.not.i90 = icmp ugt i64 %0, -33
  br i1 %.not.i90, label %.invoke, label %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit, !prof !27

_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit: ; preds = %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit
  %i.s = add nuw i64 %0, 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %i.v = add nuw i64 %0, 31
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  %.not.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not.i.i, label %.invoke, label %_ZN4absl12lts_2025051213base_internalL7RoundUpEmm.exit, !prof !27

.invoke:                                          ; preds = %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit, %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 437, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36)
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

_ZN4absl12lts_2025051213base_internalL7RoundUpEmm.exit: ; preds = %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit
  %i.x = sub i64 0, %i.u
  %i.y = and i64 %i.w, %i.x                       ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.aa = add i64 %i.y, -40
  %i.ab = lshr i64 %i.aa, 3                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.af = add i64 %i.y, -1
  %i.ag = icmp eq i64 %i.ab, 0
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit, %_ZN4absl12lts_2025051213base_internalL7RoundUpEmm.exit
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !21  ; 3 uses
  %i.ai = icmp ugt i64 %i.y, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %i.y, %bb.e ]
  %.067.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.aj = add nuw nsw i32 %.067.i.i, 1
  %i.ak = lshr i64 %.08.i.i, 1                    ; 2 uses
  %i.al = icmp ugt i64 %i.ak, %i.ah
  br i1 %i.al, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit, !llvm.loop !44

_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.am = add nuw nsw i32 %.067.i.i, 2
  %i.an = zext nneg i32 %i.am to i64
  br label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i

_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit, %bb.e
  %.06.lcssa.i.i = phi i64 [ 1, %bb.e ], [ %i.an, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit ]
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !27

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 148, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26)
          to label %.noexc92 unwind label %.loopexit.split-lp

.noexc92:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  %spec.select12.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %.06.lcssa.i.i)
  %spec.select.i = trunc nuw nsw i64 %spec.select12.i to i32
  %i.ao = call noundef range(i32 1, 30) i32 @llvm.umin.i32(i32 %spec.select.i, i32 29)
  %4 = add nsw i32 %i.ao, -1                      ; 3 uses
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !26 ; 3 uses
  %5 = icmp slt i32 %4, %i.ap
  br i1 %5, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %bb.g
  %i.aq = zext nneg i32 %4 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.o
  %.073 = phi ptr [ %i.at, %bb.o ], [ %i.ac, %.preheader ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.073, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !46
  %.not.i92 = icmp slt i32 %4, %i.as
  br i1 %.not.i92, label %bb.i, label %.invoke207, !prof !7

bb.i:                                             ; preds = %bb.h
  %6 = getelementptr inbounds nuw i8, ptr %.073, i64 40
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.aq
  %i.at = load ptr, ptr %7, align 8, !tbaa !36    ; 17 uses
  %.not17.i = icmp eq ptr %i.at, null
  br i1 %.not17.i, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39
  %i.aw = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.ax = xor i64 %i.av, %i.aw
  %.not18.i = icmp eq i64 %i.ax, -1283669654
  br i1 %.not18.i, label %bb.k, label %.invoke207, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40
  %.not19.i = icmp eq ptr %i.az, %1
  br i1 %.not19.i, label %bb.l, label %.invoke207, !prof !7

bb.l:                                             ; preds = %bb.k
  %.not20.i = icmp eq ptr %.073, %i.ac
  br i1 %.not20.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not21.i = icmp ult ptr %.073, %i.at
  br i1 %.not21.i, label %bb.n, label %.invoke207, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %.073, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %.073, i64 %i.ba
  %.not22.i = icmp ult ptr %i.bb, %i.at
  br i1 %.not22.i, label %bb.o, label %.invoke207, !prof !7

.invoke207:                                       ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.h
  %i.bc = phi i32 [ 461, %bb.m ], [ 459, %bb.k ], [ 458, %bb.j ], [ 453, %bb.h ], [ 464, %bb.n ]
  %i.bd = phi ptr [ @.str.43, %bb.m ], [ @.str.41, %bb.k ], [ @.str.39, %bb.j ], [ @.str.37, %bb.h ], [ @.str.45, %bb.n ]
  %i.be = phi ptr [ @.str.44, %bb.m ], [ @.str.42, %bb.k ], [ @.str.40, %bb.j ], [ @.str.38, %bb.h ], [ @.str.46, %bb.n ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef %i.bc, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be)
          to label %.cont208 unwind label %bb.q

.cont208:                                         ; preds = %.invoke207
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !38 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, %i.y
  br i1 %i.bg, label %bb.h, label %.preheader.preheader.i.i, !llvm.loop !51

bb.p:                                             ; preds = %.invoke
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.q:                                             ; preds = %.invoke207
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.critedge.thread:                                 ; preds = %bb.i, %bb.g
  %i.bj = load atomic i32, ptr %1 monotonic, align 8
  %i.bk = and i32 %i.bj, 2
  %i.bl = atomicrmw xchg ptr %1, i32 %i.bk release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.bl, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.r

bb.r:                                             ; preds = %.critedge.thread
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %i.bl) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %.loopexit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %.critedge.thread, %bb.r
  %i.bm = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.bn = shl i64 %i.bm, 4                        ; 2 uses
  %i.bo = add i64 %i.af, %i.bn                    ; 2 uses
  %.not.i.i100 = icmp ult i64 %i.bo, %i.y
  br i1 %.not.i.i100, label %bb.s, label %bb.t, !prof !27

bb.s:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 437, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36)
          to label %.noexc101 unwind label %bb.v

.noexc101:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  %i.bp = sub i64 0, %i.bn
  %i.bq = and i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = load i32, ptr %i.d, align 4, !tbaa !18
  %i.bs = and i32 %i.br, 2
  %.not80.a = icmp eq i32 %i.bs, 0
  br i1 %.not80.a, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = call i64 (i64, ...) @syscall(i64 noundef 9, i64 noundef 0, i64 noundef %i.bq, i64 noundef 3, i64 noundef 34, i64 noundef -1, i64 noundef 0) #13
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.w:                                             ; preds = %bb.t
  %i.bw = call ptr @mmap(ptr noundef null, i64 noundef %i.bq, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.065 = phi ptr [ %i.bu, %bb.u ], [ %i.bw, %bb.w ] ; 7 uses
  %i.bx = icmp eq ptr %.065, inttoptr (i64 -1 to ptr)
  br i1 %i.bx, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.by = tail call ptr @__errno_location() #15
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 570, ptr noundef nonnull @.str.31, i32 noundef %i.bz)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ab:                                            ; preds = %bb.x
  %i.cb = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %.065, i64 noundef %i.bq, ptr noundef nonnull @.str.32) #13 ; 0 uses
  %i.cc = load atomic i32, ptr %1 monotonic, align 8 ; 3 uses
  %i.cd = and i32 %i.cc, 1
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %bb.ab
  %i.ce = or disjoint i32 %i.cc, 1
  %i.cf = cmpxchg ptr %1, i32 %i.cc, i32 %i.ce acquire monotonic, align 4
  %i.cg = extractvalue { i32, i1 } %i.cf, 0
  %.pre.i.i = and i32 %i.cg, 1
  %i.ch = icmp eq i32 %.pre.i.i, 0
  br i1 %i.ch, label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %bb.ab
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %1) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit unwind label %bb.ac

_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i
  store i64 %i.bq, ptr %.065, align 8, !tbaa !38
  %i.ci = ptrtoint ptr %.065 to i64
  %i.cj = xor i64 %i.ci, 1283669653
  %i.ck = getelementptr inbounds nuw i8, ptr %.065, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %.065, i64 16
  store ptr %1, ptr %i.cl, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %.065, i64 32
  invoke fastcc void @_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.cm, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i, %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.preheader.preheader.i.i:                         ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cq = zext nneg i32 %i.ap to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ae, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cq, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 2 uses
  %.016.i.i = phi ptr [ %i.ac, %.preheader.preheader.i.i ], [ %.1.i.i, %bb.ae ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.ct, %bb.ad ], [ %.016.i.i, %.preheader.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next.i.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36 ; 3 uses
  %i.cu = icmp ne ptr %i.ct, null
  %i.cv = icmp ult ptr %i.ct, %i.at
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %bb.ad, label %bb.ae, !llvm.loop !47

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.cx, align 8, !tbaa !36
  %i.cy = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.cy, label %.preheader.i.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i, !llvm.loop !48

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i: ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.a, align 16, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
end_hunk_0
