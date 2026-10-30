Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/spinlock?download=true
inline.NumInlined: 30
inline.NumDeleted: 17
begin_hunk_0_@_ZN4absl12lts_2026052613base_internal8SpinLock8SpinLoopEv:bb.a

bb.c:                                             ; preds = %bb.c, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit
  %.0 = phi i32 [ %i.g, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit ], [ %i.i, %bb.c ] ; 2 uses
  %i.h = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %.not = trunc i32 %i.h to i1
  %i.i = add nsw i32 %.0, -1
  %i.j = icmp sgt i32 %.0, 1
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.c
  ret i32 %i.h
}

declare noundef i32 @_ZN4absl12lts_2026052613base_internal7NumCPUsEv() local_unnamed_addr #2

; Function Attrs: cold mustprogress optsize uwtable
define dso_local void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4absl12lts_2026052613base_internal8SpinLock8SpinLoopEv(ptr noundef nonnull align 4 dereferenceable(4) %0) ; 10 uses
  %i.b = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 2
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.not.i, label %bb.d, label %.thread13.i

bb.d:                                             ; preds = %bb.c
  %i.f = or disjoint i32 %i.a, 1
  %i.g = cmpxchg ptr %0, i32 %i.a, i32 %i.f acquire monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit

.thread13.i:                                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = add nsw i32 %i.j, 1
  store atomic i32 %i.k, ptr %i.i monotonic, align 4
  %i.l = or i32 %i.a, 5
  %i.m = cmpxchg ptr %0, i32 %i.a, i32 %i.l acquire monotonic, align 4 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit, label %bb.e

.thread.i:                                        ; preds = %bb.b
  %i.o = or disjoint i32 %i.a, 1
  %i.p = cmpxchg ptr %0, i32 %i.a, i32 %i.o acquire monotonic, align 4
  %i.q = extractvalue { i32, i1 } %i.p, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit

bb.e:                                             ; preds = %.thread13.i
  %i.r = extractvalue { i32, i1 } %i.m, 0
  %i.s = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 76 ; 2 uses
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = add nsw i32 %i.u, -1
  store atomic i32 %i.v, ptr %i.t monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit

_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit: ; preds = %bb.a, %bb.d, %.thread13.i, %.thread.i, %bb.e
  %.04.i = phi i32 [ %i.a, %bb.a ], [ %i.r, %bb.e ], [ %i.h, %bb.d ], [ %i.a, %.thread13.i ], [ %i.q, %.thread.i ] ; 3 uses
  %i.w = and i32 %.04.i, 1
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit
  %i.y = lshr i32 %.04.i, 1
  %.lobit = and i32 %i.y, 1
  %i.z = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = shl i64 %i.ad, 32
  %i.af = or i64 %i.ae, %i.ac
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f
  %i.ag = tail call noundef i64 %i.z(), !inline_history !16
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.g
  %.0.in.i = phi i64 [ %i.af, %bb.g ], [ %i.ag, %bb.h ]
  %.0.i = ashr i64 %.0.in.i, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22
  %.0.ph39 = phi i32 [ %i.bh, %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22 ], [ 0, %.lr.ph.preheader ]
  %.05.ph38 = phi i32 [ %.1.i.a, %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.028.ph37 = phi i32 [ %.04.i18, %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22 ], [ %.04.i, %.lr.ph.preheader ]
  %invariant.op = or i32 %.05.ph38, 1
  %invariant.op50 = or i32 %.05.ph38, 5
  %invariant.op52 = or i32 %.05.ph38, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.backedge
  %.02835 = phi i32 [ %.028.ph37, %.lr.ph ], [ %.028.be, %.backedge ] ; 4 uses
  %i.ah = icmp ult i32 %.02835, 8
  br i1 %i.ah, label %bb.j, label %.loopexit31

bb.j:                                             ; preds = %bb.i
  %i.ai = or disjoint i32 %.02835, 8              ; 2 uses
  %i.aj = cmpxchg ptr %0, i32 %.02835, i32 %i.ai monotonic monotonic, align 4 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  br i1 %i.ak, label %.loopexit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = extractvalue { i32, i1 } %i.aj, 0       ; 12 uses
  %i.am = and i32 %i.al, 1
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %i.al, 2
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %.thread.i10

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i.not.i11, label %bb.n, label %.thread13.i12

bb.n:                                             ; preds = %bb.m
  %.reass53 = or i32 %i.al, %invariant.op52
  %i.ar = cmpxchg ptr %0, i32 %i.al, i32 %.reass53 acquire monotonic, align 4
  %i.as = extractvalue { i32, i1 } %i.ar, 0
  br label %.backedge

.thread13.i12:                                    ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 76 ; 2 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = add nsw i32 %i.au, 1
  store atomic i32 %i.av, ptr %i.at monotonic, align 4
  %.reass51 = or i32 %i.al, %invariant.op50
  %i.aw = cmpxchg ptr %0, i32 %i.al, i32 %.reass51 acquire monotonic, align 4 ; 2 uses
  %i.ax = extractvalue { i32, i1 } %i.aw, 1
  br i1 %i.ax, label %.backedge, label %bb.o

.thread.i10:                                      ; preds = %bb.l
  %.reass = or i32 %i.al, %invariant.op
  %i.ay = cmpxchg ptr %0, i32 %i.al, i32 %.reass acquire monotonic, align 4
  %i.az = extractvalue { i32, i1 } %i.ay, 0
  br label %.backedge

bb.o:                                             ; preds = %.thread13.i12
  %i.ba = extractvalue { i32, i1 } %i.aw, 0
  %i.bb = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 76 ; 2 uses
  %i.bd = load atomic i32, ptr %i.bc monotonic, align 4
  %i.be = add nsw i32 %i.bd, -1
  store atomic i32 %i.be, ptr %i.bc monotonic, align 4
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %.thread.i10, %.thread13.i12, %bb.n, %bb.p
  %.028.be = phi i32 [ %i.al, %bb.p ], [ %i.az, %.thread.i10 ], [ %i.ba, %bb.o ], [ %i.as, %bb.n ], [ %i.al, %.thread13.i12 ] ; 2 uses
  %i.bf = and i32 %.028.be, 1
  %.not7 = icmp eq i32 %i.bf, 0
  br i1 %.not7, label %.loopexit, label %bb.i, !llvm.loop !17

bb.p:                                             ; preds = %bb.k
  %i.bg = icmp ult i32 %i.al, 8
  br i1 %i.bg, label %.backedge, label %.loopexit31

.loopexit31:                                      ; preds = %bb.p, %bb.i, %bb.j
  %.1 = phi i32 [ %i.ai, %bb.j ], [ %i.al, %bb.p ], [ %.02835, %bb.i ]
  %i.bh = add nuw nsw i32 %.0.ph39, 1             ; 2 uses
  tail call void @AbslInternalSpinLockDelay_lts_20260526(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %i.bh, i32 noundef %.lobit)
  %i.bi = tail call noundef i32 @_ZN4absl12lts_2026052613base_internal8SpinLock8SpinLoopEv(ptr noundef nonnull align 4 dereferenceable(4) %0) ; 10 uses
  %i.bj = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit31
  %i.bl = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !18 ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0
  %i.bn = extractvalue { i64, i64 } %i.bl, 1
  %i.bo = shl i64 %i.bn, 32
  %i.bp = or i64 %i.bo, %i.bm
  br label %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit16

bb.r:                                             ; preds = %.loopexit31
  %i.bq = tail call noundef i64 %i.bj(), !inline_history !16
  br label %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit16

_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit16: ; preds = %bb.q, %bb.r
  %.0.in.i14 = phi i64 [ %i.bp, %bb.q ], [ %i.bq, %bb.r ]
  %.0.i15 = ashr i64 %.0.in.i14, 1
  %i.br = sub nsw i64 %.0.i15, %.0.i
  %i.bs = ashr i64 %i.br, 7
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.bs, i64 536870911)
  %.tr.i = trunc i64 %.sroa.speculated.i to i32
  %i.bt = shl i32 %.tr.i, 3                       ; 2 uses
  switch i32 %i.bt, label %bb.s [
    i32 0, label %_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll.exit
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit16
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll.exit

bb.t:                                             ; preds = %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit16
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll.exit

_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll.exit: ; preds = %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit16, %bb.s, %bb.t
  %.1.i.a = phi i32 [ 8, %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit16 ], [ %i.bt, %bb.s ], [ 16, %bb.t ] ; 4 uses
  %i.bu = and i32 %i.bi, 1
  %.not.i17 = icmp eq i32 %i.bu, 0
  br i1 %.not.i17, label %bb.u, label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22

bb.u:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll.exit
  %i.bv = and i32 %i.bi, 2
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.v, label %.thread.i19

bb.v:                                             ; preds = %bb.u
  %i.bx = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.not.i20 = icmp eq ptr %i.bx, null
  br i1 %.not.i.not.i20, label %bb.w, label %.thread13.i21

bb.w:                                             ; preds = %bb.v
  %i.by = or i32 %i.bi, %.1.i.a
  %i.bz = or disjoint i32 %i.by, 1
  %i.ca = cmpxchg ptr %0, i32 %i.bi, i32 %i.bz acquire monotonic, align 4
  %i.cb = extractvalue { i32, i1 } %i.ca, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22

.thread13.i21:                                    ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 76 ; 2 uses
  %i.cd = load atomic i32, ptr %i.cc monotonic, align 4
  %i.ce = add nsw i32 %i.cd, 1
  store atomic i32 %i.ce, ptr %i.cc monotonic, align 4
  %i.cf = or i32 %i.bi, %.1.i.a
  %i.cg = or i32 %i.cf, 5
  %i.ch = cmpxchg ptr %0, i32 %i.bi, i32 %i.cg acquire monotonic, align 4 ; 2 uses
  %i.ci = extractvalue { i32, i1 } %i.ch, 1
  br i1 %i.ci, label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22, label %bb.x

.thread.i19:                                      ; preds = %bb.u
  %i.cj = or i32 %i.bi, %.1.i.a
  %i.ck = or disjoint i32 %i.cj, 1
  %i.cl = cmpxchg ptr %0, i32 %i.bi, i32 %i.ck acquire monotonic, align 4
  %i.cm = extractvalue { i32, i1 } %i.cl, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22

bb.x:                                             ; preds = %.thread13.i21
  %i.cn = extractvalue { i32, i1 } %i.ch, 0
  %i.co = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 76 ; 2 uses
  %i.cq = load atomic i32, ptr %i.cp monotonic, align 4
  %i.cr = add nsw i32 %i.cq, -1
  store atomic i32 %i.cr, ptr %i.cp monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22

_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22: ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll.exit, %bb.w, %.thread13.i21, %.thread.i19, %bb.x
  %.04.i18 = phi i32 [ %i.bi, %_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll.exit ], [ %i.cn, %bb.x ], [ %i.cb, %bb.w ], [ %i.bi, %.thread13.i21 ], [ %i.cm, %.thread.i19 ] ; 2 uses
  %i.cs = and i32 %.04.i18, 1
  %.not734 = icmp eq i32 %i.cs, 0
  br i1 %.not734, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit22, %.backedge, %_ZN4absl12lts_2026052613base_internal8SpinLock15TryLockInternalEjj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 1, -7) i32 @_ZN4absl12lts_2026052613base_internal8SpinLock16EncodeWaitCyclesEll(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sub nsw i64 %1, %0
  %i.b = ashr i64 %i.a, 7
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.b, i64 536870911)
  %.tr = trunc i64 %.sroa.speculated to i32
  %i.c = shl i32 %.tr, 3                          ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 0, label %bb.d
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi i32 [ 8, %bb.a ], [ %i.c, %bb.b ], [ 16, %bb.c ]
  ret i32 %.1
}

; Function Attrs: cold mustprogress optsize uwtable
define dso_local void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @AbslInternalSpinLockWake_lts_20260526(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.a = and i32 %1, -8                           ; 2 uses
  %.not = icmp eq i32 %i.a, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internalL19submit_profile_dataE acquire, align 8
  tail call void %i.d(ptr noundef nonnull %0, i64 noundef %i.c), !inline_history !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 0, 68719476609) i64 @_ZN4absl12lts_2026052613base_internal8SpinLock16DecodeWaitCyclesEj(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i32 %0, -8
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613base_internal10AtomicHookIPFvPKvlEE13DummyFunctionES4_l(ptr noundef %0, i64 noundef %1) #5 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @AbslInternalSpinLockDelay_lts_20260526(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @AbslInternalSpinLockWake_lts_20260526(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt13__atomic_baseIPFvPKvlEE", !10, i64 0}
!12 = !{!"_ZTSSt6atomicIPFvPKvlEE", !11, i64 0}
!13 = !{!"_ZTSN4absl12lts_2026052613base_internal10AtomicHookIPFvPKvlEEE", !12, i64 0, !10, i64 8}
!14 = !{!13, !10, i64 8}
!15 = distinct !{!15, !9}
!16 = distinct !{null}
!17 = distinct !{!17, !9}
!18 = !{i64 3990857}
!19 = distinct !{null}
end_hunk_0
