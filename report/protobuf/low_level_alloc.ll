inline.NumInlined: 86
inline.NumDeleted: 39
begin_hunk_0_@__errno_location
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %0) local_unnamed_addr #4 section "malloc_hook" align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::base_internal::(anonymous namespace)::ArenaLock", align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i8 0, ptr %2, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  store i8 0, ptr %i.c, align 1, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  %i.g = and i32 %i.f, 2
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.h = call i32 @sigfillset(ptr noundef nonnull %1) #13 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %i.i) #13
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %i.c, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.n = load atomic i32, ptr %i.m monotonic, align 4 ; 3 uses
  %i.o = and i32 %i.n, 1
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.d
  %i.p = or disjoint i32 %i.n, 1
  %i.q = cmpxchg ptr %i.m, i32 %i.n, i32 %i.p acquire monotonic, align 4
  %i.r = extractvalue { i32, i1 } %i.q, 0
  %.pre.i.i.i = and i32 %i.r, 1
  %i.s = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.s, label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.d
  call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %i.m) #14
  br label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit

_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  invoke fastcc void @_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.j, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 516, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.m, %bb.k, %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockC2EPNS1_13LowLevelAlloc5ArenaE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.u, -1
  store i32 %i.y, ptr %i.t, align 8, !tbaa !8
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = and i32 %i.aa, 2
  %i.ac = atomicrmw xchg ptr %i.z, i32 %i.ab release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.ac, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.z, i32 noundef %i.ac) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i unwind label %bb.h

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i: ; preds = %bb.k, %bb.j
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !32, !range !34, !noundef !35
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.af, ptr noundef null) #13 ; 2 uses
  %.not.i13 = icmp eq i32 %i.ag, 0
  br i1 %.not.i13, label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 301, ptr noundef nonnull @.str.18, i32 noundef %i.ag)
          to label %.noexc14 unwind label %bb.h

.noexc14:                                         ; preds = %bb.m
  unreachable

_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.w, %bb.h ]
  %.val = load i8, ptr %2, align 8, !tbaa !28, !range !34, !noundef !35
  call fastcc void @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev(i8 %.val) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev(i8 %.0.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %bb.d, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 294, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [30 x ptr], align 16              ; 10 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -32 ; 9 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = xor i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 1283669653
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 495, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %.not14 = icmp eq ptr %i.h, %1
  br i1 %.not14, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 497, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.m = add i64 %i.i, -40
  %i.n = lshr i64 %i.m, 3
  %i.o = icmp ugt i64 %i.i, %i.k
  br i1 %i.o, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.i, %bb.e ]
  %.067.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.p = add nuw nsw i32 %.067.i.i, 1             ; 2 uses
  %i.q = lshr i64 %.08.i.i, 1                     ; 2 uses
  %i.r = icmp ugt i64 %i.q, %i.k
  br i1 %i.r, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i, !llvm.loop !44

_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.06.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %i.p, %.lr.ph.i.i ]
  %i.s = load i32, ptr %i.l, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  %.05.i.i = phi i32 [ %i.s, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i ], [ %i.u, %bb.f ]
  %.0.i.i = phi i32 [ 1, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.t = mul i32 %.05.i.i, 1103515245
  %i.u = add i32 %i.t, 12345                      ; 3 uses
  %i.v = and i32 %i.u, 1073741824
  %i.w = icmp eq i32 %i.v, 0
  %i.x = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.w, label %bb.f, label %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i, !llvm.loop !45

_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i: ; preds = %bb.f
  store i32 %i.u, ptr %i.l, align 4, !tbaa !3
  %i.y = add nsw i32 %.0.i.i, %.06.lcssa.i.i
  %i.z = sext i32 %i.y to i64
  %spec.select12.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.z)
  %spec.select.i = trunc i64 %spec.select12.i to i32 ; 2 uses
  %i.aa = icmp slt i32 %spec.select.i, 1
  br i1 %i.aa, label %bb.g, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit, !prof !27

bb.g:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 148, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26)
  unreachable

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit: ; preds = %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i
  %i.ab = tail call noundef range(i32 1, 30) i32 @llvm.umin.i32(i32 %spec.select.i, i32 29) ; 3 uses
  store i32 %i.ab, ptr %0, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !46 ; 5 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.preheader.preheader.i.i, label %._crit_edge.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.ag = zext nneg i32 %i.ae to i64              ; 3 uses
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.preheader.i.i
  %indvars.iv.next.i.i.prol = add nsw i64 %i.ag, -1 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i.i.prol
  %.1.i.i.prol = phi ptr [ %i.aj, %bb.h ], [ %i.ac, %.preheader.i.i.prol ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.prol, i64 40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.prol
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 3 uses
  %i.ak = icmp ne ptr %i.aj, null
  %i.al = icmp ult ptr %i.aj, %i.b
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %.preheader.i.i.prol.loopexit.unr-lcssa, !llvm.loop !47

.preheader.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.h
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.prol
  store ptr %.1.i.i.prol, ptr %i.an, align 8, !tbaa !36
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol.loopexit.unr-lcssa, %.preheader.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.ag, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.preheader.i.i.prol.loopexit.unr-lcssa ]
  %.016.i.i.unr = phi ptr [ %i.ac, %.preheader.preheader.i.i ], [ %.1.i.i.prol, %.preheader.i.i.prol.loopexit.unr-lcssa ]
  %i.ao = icmp eq i32 %i.ae, 1
  br i1 %i.ao, label %._crit_edge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %bb.k
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %bb.k ], [ %indvars.iv.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 3 uses
  %.016.i.i = phi ptr [ %.1.i.i.1, %bb.k ], [ %.016.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  br label %bb.i

._crit_edge.i.i:                                  ; preds = %.preheader.i.i.prol.loopexit, %bb.k, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.ap = icmp slt i32 %i.ae, %i.ab
  br i1 %i.ap, label %.lr.ph.preheader.i, label %.lr.ph23.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i.i
  %i.aq = sext i32 %i.ae to i64
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.at, %bb.i ], [ %.016.i.i, %.preheader.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36 ; 3 uses
  %i.au = icmp ne ptr %i.at, null
  %i.av = icmp ult ptr %i.at, %i.b
  %i.aw = and i1 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.preheader.i.i.1, !llvm.loop !47

.preheader.i.i.1:                                 ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.ax, align 8, !tbaa !36
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i.i.1
  %.1.i.i.1 = phi ptr [ %i.ba, %bb.j ], [ %.1.i.i, %.preheader.i.i.1 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i.i.1, i64 40
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.1
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 3 uses
  %i.bb = icmp ne ptr %i.ba, null
  %i.bc = icmp ult ptr %i.ba, %i.b
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.k, !llvm.loop !47

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store ptr %.1.i.i.1, ptr %i.be, align 8, !tbaa !36
  %i.bf = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.bf, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !48

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not21.i = icmp eq i32 %i.bl, 0
  br i1 %.not21.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %._crit_edge.i.i, %.preheader.i
  %.lcssa.i25 = phi i32 [ %i.bl, %.preheader.i ], [ %i.ab, %._crit_edge.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bh = zext i32 %.lcssa.i25 to i64             ; 2 uses
  %xtraiter32 = and i64 %i.bh, 1
  %i.bi = icmp eq i32 %.lcssa.i25, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph23.i.new

.lr.ph23.i.new:                                   ; preds = %.lr.ph23.i
  %unroll_iter = and i64 %i.bh, 4294967294
  br label %bb.l

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.aq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.ac, ptr %i.bj, align 8, !tbaa !36
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bk = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.bk, ptr %i.ad, align 8, !tbaa !46
  %i.bl = load i32, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i, !llvm.loop !49

bb.l:                                             ; preds = %bb.l, %.lr.ph23.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph23.i.new ], [ %indvars.iv.next27.i.1, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph23.i.new ], [ %niter.next.1, %bb.l ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !36
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
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE:bb.a
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
  %i.ao = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.an)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = call range(i32 1, 30) i32 @llvm.umin.i32(i32 %i.ap, i32 29)
  br label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i

_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit, %bb.e
  %.06.lcssa.i.i = phi i32 [ 1, %bb.e ], [ %i.aq, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit ] ; 3 uses
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !27

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 148, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26)
          to label %.noexc92 unwind label %.loopexit.split-lp

.noexc92:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  %i.ar = load i32, ptr %i.ad, align 8, !tbaa !26 ; 3 uses
  %.not78 = icmp sgt i32 %.06.lcssa.i.i, %i.ar
  br i1 %.not78, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.as = zext nneg i32 %.06.lcssa.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.o
  %.073 = phi ptr [ %i.ax, %bb.o ], [ %i.ac, %.preheader ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.073, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !46
  %.not.i93.not = icmp sgt i32 %.06.lcssa.i.i, %i.au
  br i1 %.not.i93.not, label %.invoke207, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr [8 x i8], ptr %.073, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 17 uses
  %.not17.i = icmp eq ptr %i.ax, null
  br i1 %.not17.i, label %.critedge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.ba = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.bb = xor i64 %i.az, %i.ba
  %.not18.i = icmp eq i64 %i.bb, -1283669654
  br i1 %.not18.i, label %bb.k, label %.invoke207, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40
  %.not19.i = icmp eq ptr %i.bd, %1
  br i1 %.not19.i, label %bb.l, label %.invoke207, !prof !7

bb.l:                                             ; preds = %bb.k
  %.not20.i = icmp eq ptr %.073, %i.ac
  br i1 %.not20.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not21.i = icmp ult ptr %.073, %i.ax
  br i1 %.not21.i, label %bb.n, label %.invoke207, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.be = load i64, ptr %.073, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %.073, i64 %i.be
  %.not22.i = icmp ult ptr %i.bf, %i.ax
  br i1 %.not22.i, label %bb.o, label %.invoke207, !prof !7

.invoke207:                                       ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.h
  %i.bg = phi i32 [ 461, %bb.m ], [ 459, %bb.k ], [ 458, %bb.j ], [ 453, %bb.h ], [ 464, %bb.n ]
  %i.bh = phi ptr [ @.str.43, %bb.m ], [ @.str.41, %bb.k ], [ @.str.39, %bb.j ], [ @.str.37, %bb.h ], [ @.str.45, %bb.n ]
  %i.bi = phi ptr [ @.str.44, %bb.m ], [ @.str.42, %bb.k ], [ @.str.40, %bb.j ], [ @.str.38, %bb.h ], [ @.str.46, %bb.n ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef %i.bg, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi)
          to label %.cont208 unwind label %bb.q

.cont208:                                         ; preds = %.invoke207
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !38 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.y
  br i1 %i.bk, label %bb.h, label %.preheader.preheader.i.i, !llvm.loop !51

bb.p:                                             ; preds = %.invoke
  %i.bl = landingpad { ptr, i32 }
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
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.critedge.thread:                                 ; preds = %bb.i, %bb.g
  %i.bn = load atomic i32, ptr %1 monotonic, align 4
  %i.bo = and i32 %i.bn, 2
  %i.bp = atomicrmw xchg ptr %1, i32 %i.bo release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.bp, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.r

bb.r:                                             ; preds = %.critedge.thread
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %i.bp) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %.loopexit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %.critedge.thread, %bb.r
  %i.bq = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.br = shl i64 %i.bq, 4                        ; 2 uses
  %i.bs = add i64 %i.af, %i.br                    ; 2 uses
  %.not.i.i100 = icmp ult i64 %i.bs, %i.y
  br i1 %.not.i.i100, label %bb.s, label %bb.t, !prof !27

bb.s:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 437, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36)
          to label %.noexc101 unwind label %bb.v

.noexc101:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  %i.bt = sub i64 0, %i.br
  %i.bu = and i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !18
  %i.bw = and i32 %i.bv, 2
  %.not80 = icmp eq i32 %i.bw, 0
  br i1 %.not80, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = call i64 (i64, ...) @syscall(i64 noundef 9, i64 noundef 0, i64 noundef %i.bu, i64 noundef 3, i64 noundef 34, i64 noundef -1, i64 noundef 0) #13
  %i.by = inttoptr i64 %i.bx to ptr
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.w:                                             ; preds = %bb.t
  %i.ca = call ptr @mmap(ptr noundef null, i64 noundef %i.bu, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.065 = phi ptr [ %i.by, %bb.u ], [ %i.ca, %bb.w ] ; 7 uses
  %i.cb = icmp eq ptr %.065, inttoptr (i64 -1 to ptr)
  br i1 %i.cb, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cc = tail call ptr @__errno_location() #15
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 570, ptr noundef nonnull @.str.31, i32 noundef %i.cd)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ab:                                            ; preds = %bb.x
  %i.cf = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %.065, i64 noundef %i.bu, ptr noundef nonnull @.str.32) #13 ; 0 uses
  %i.cg = load atomic i32, ptr %1 monotonic, align 4 ; 3 uses
  %i.ch = and i32 %i.cg, 1
  %.not.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %bb.ab
  %i.ci = or disjoint i32 %i.cg, 1
  %i.cj = cmpxchg ptr %1, i32 %i.cg, i32 %i.ci acquire monotonic, align 4
  %i.ck = extractvalue { i32, i1 } %i.cj, 0
  %.pre.i.i = and i32 %i.ck, 1
  %i.cl = icmp eq i32 %.pre.i.i, 0
  br i1 %i.cl, label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %bb.ab
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %1) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit unwind label %bb.ac

_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i
  store i64 %i.bu, ptr %.065, align 8, !tbaa !38
  %i.cm = ptrtoint ptr %.065 to i64
  %i.cn = xor i64 %i.cm, 1283669653
  %i.co = getelementptr inbounds nuw i8, ptr %.065, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %.065, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %.065, i64 32
  invoke fastcc void @_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.cq, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i, %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.preheader.preheader.i.i:                         ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cu = zext nneg i32 %i.ar to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ae, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cu, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 2 uses
  %.016.i.i = phi ptr [ %i.ac, %.preheader.preheader.i.i ], [ %.1.i.i, %bb.ae ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.cx, %bb.ad ], [ %.016.i.i, %.preheader.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36 ; 3 uses
  %i.cy = icmp ne ptr %i.cx, null
  %i.cz = icmp ult ptr %i.cx, %i.ax
  %i.da = and i1 %i.cy, %i.cz
  br i1 %i.da, label %bb.ad, label %bb.ae, !llvm.loop !47

bb.ae:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.db, align 8, !tbaa !36
  %i.dc = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.dc, label %.preheader.i.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i, !llvm.loop !48

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i: ; preds = %bb.ae
  %i.dd = load ptr, ptr %i.a, align 16, !tbaa !36
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !36
  %i.dg = icmp eq ptr %i.ax, %i.df
  br i1 %i.dg, label %.preheader.i, label %.invoke209, !prof !7

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !46 ; 2 uses
  %.not2425.i = icmp eq i32 %i.di, 0
  br i1 %.not2425.i, label %.lr.ph28.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.dk = zext i32 %i.di to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ag ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36
  %i.dq = icmp eq ptr %i.dp, %i.ax
  br i1 %i.dq, label %bb.ag, label %.lr.ph28.i.preheader

bb.ag:                                            ; preds = %bb.af
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !36
  store ptr %i.ds, ptr %i.do, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not24.i = icmp eq i64 %indvars.iv.next.i, %i.dk
  br i1 %.not24.i, label %.lr.ph28.i.preheader, label %bb.af, !llvm.loop !52

.lr.ph28.i.preheader:                             ; preds = %bb.af, %bb.ag, %.preheader.i
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader, %bb.ah
  %i.dt = phi i32 [ %i.dz, %bb.ah ], [ %i.ar, %.lr.ph28.i.preheader ] ; 3 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr [8 x i8], ptr %i.ac, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !36
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ah, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit

bb.ah:                                            ; preds = %.lr.ph28.i
  %i.dz = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.dz, ptr %i.ad, align 8, !tbaa !46
  %i.ea = icmp sgt i32 %i.dt, 1
  br i1 %i.ea, label %.lr.ph28.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, !llvm.loop !53

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit: ; preds = %bb.ah, %.lr.ph28.i
  %i.eb = add i64 %i.ah, %i.y                     ; 2 uses
  %.not.i106 = icmp ult i64 %i.eb, %i.y
  br i1 %.not.i106, label %.invoke209, label %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108, !prof !27

.invoke209:                                       ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.ec = phi i32 [ 188, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ 437, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ]
  %i.ed = phi ptr [ @.str.29, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ @.str.35, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ]
  %i.ee = phi ptr [ @.str.30, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ @.str.36, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef %i.ec, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ee)
          to label %.cont210 unwind label %bb.aj

.cont210:                                         ; preds = %.invoke209
  unreachable

_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108: ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit
  %.not81 = icmp ugt i64 %i.eb, %i.bj
  br i1 %.not81, label %.thread, label %bb.ai

.thread:                                          ; preds = %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108
  %i.ef = xor i64 %i.ba, 1283669653
  store i64 %i.ef, ptr %i.cs, align 8, !tbaa !39
  br label %bb.ap

bb.ai:                                            ; preds = %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.y ; 5 uses
  %i.eh = sub i64 %i.bj, %i.y
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !38
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = xor i64 %i.ei, 1283669653
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !39
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr %1, ptr %i.el, align 8, !tbaa !40
  store i64 %i.y, ptr %i.ax, align 8, !tbaa !38
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  invoke fastcc void @_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.em, ptr noundef nonnull %1)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %.invoke209, %bb.as, %bb.aq
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %bb.ai
  %.pre = load ptr, ptr %i.ct, align 8, !tbaa !40
  %i.ep = icmp eq ptr %.pre, %1
  %i.eq = xor i64 %i.ba, 1283669653
  store i64 %i.eq, ptr %i.cs, align 8, !tbaa !39
  br i1 %i.ep, label %bb.ap, label %bb.am, !prof !54

bb.am:                                            ; preds = %bb.al
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 608, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %.thread, %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !8
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !8
  %i.ev = load ptr, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  %i.ew = load atomic i32, ptr %i.ev monotonic, align 4
  %i.ex = and i32 %i.ew, 2
  %i.ey = atomicrmw xchg ptr %i.ev, i32 %i.ex release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.ey, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.ev, i32 noundef %i.ey) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i unwind label %bb.aj

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213base_internalL8CoalesceEPNS1_12_GLOBAL__N_19AllocListE:bb.a
  %i.z = icmp eq i32 %i.p, 0
  br i1 %i.z, label %.critedge, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.ac, %bb.f ], [ %.016.i.i, %.preheader.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %i.ad = icmp ne ptr %i.ac, null
  %i.ae = icmp ult ptr %i.ac, %i.c
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %.preheader.i.i.1, !llvm.loop !47

.preheader.i.i.1:                                 ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.ag, align 8, !tbaa !36
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i.i.1
  %.1.i.i.1 = phi ptr [ %i.aj, %bb.g ], [ %.1.i.i, %.preheader.i.i.1 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.1, i64 40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 3 uses
  %i.ak = icmp ne ptr %i.aj, null
  %i.al = icmp ult ptr %i.aj, %i.c
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %bb.h, !llvm.loop !47

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store ptr %.1.i.i.1, ptr %i.an, align 8, !tbaa !36
  %i.ao = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ao, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !48

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i: ; preds = %.preheader.i.i.prol.loopexit, %._crit_edge.i.i
  %i.ap = load ptr, ptr %i.a, align 16, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = icmp eq ptr %i.c, %i.ar
  br i1 %i.as, label %.preheader.i, label %.critedge, !prof !7

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %.not2425.i = icmp eq i32 %i.au, 0
  br i1 %.not2425.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aw = zext i32 %i.au to i64
  br label %bb.i

.critedge:                                        ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 188, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  unreachable

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bc = icmp eq ptr %i.bb, %i.c
  br i1 %i.bc, label %bb.j, label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %bb.i, %.preheader.i
  br i1 %i.q, label %.lr.ph28.i, label %._crit_edge.i.i21

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not24.i = icmp eq i64 %indvars.iv.next.i, %i.aw
  br i1 %.not24.i, label %.critedge.i, label %bb.i, !llvm.loop !52

.lr.ph28.i:                                       ; preds = %.critedge.i, %bb.k
  %i.bf = phi i32 [ %i.bl, %bb.k ], [ %i.p, %.critedge.i ] ; 5 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.n, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.k, label %.preheader.preheader.i.i32

bb.k:                                             ; preds = %.lr.ph28.i
  %i.bl = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.o, align 8, !tbaa !46
  %i.bm = icmp sgt i32 %i.bf, 1
  br i1 %i.bm, label %.lr.ph28.i, label %.critedge55, !llvm.loop !53

.preheader.preheader.i.i32:                       ; preds = %.lr.ph28.i
  %i.bn = zext nneg i32 %i.bf to i64
  br label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %bb.m, %.preheader.preheader.i.i32
  %indvars.iv.i.i34 = phi i64 [ %i.bn, %.preheader.preheader.i.i32 ], [ %indvars.iv.next.i.i36, %bb.m ] ; 2 uses
  %.016.i.i35 = phi ptr [ %i.n, %.preheader.preheader.i.i32 ], [ %.1.i.i37, %bb.m ]
  %indvars.iv.next.i.i36 = add nsw i64 %indvars.iv.i.i34, -1 ; 3 uses
  br label %bb.l

._crit_edge.i.i21:                                ; preds = %bb.m, %.critedge.i
  %i.bo = phi i32 [ %i.p, %.critedge.i ], [ %i.bf, %bb.m ] ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.critedge55, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22

bb.l:                                             ; preds = %bb.l, %.preheader.i.i33
  %.1.i.i37 = phi ptr [ %i.bs, %bb.l ], [ %.016.i.i35, %.preheader.i.i33 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i.i37, i64 40
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i36
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36 ; 3 uses
  %i.bt = icmp ne ptr %i.bs, null
  %i.bu = icmp ult ptr %i.bs, %0
  %i.bv = and i1 %i.bt, %i.bu
  br i1 %i.bv, label %bb.l, label %bb.m, !llvm.loop !47

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i36
  store ptr %.1.i.i37, ptr %i.bw, align 8, !tbaa !36
  %i.bx = icmp samesign ugt i64 %indvars.iv.i.i34, 1
  br i1 %i.bx, label %.preheader.i.i33, label %._crit_edge.i.i21, !llvm.loop !48

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22: ; preds = %._crit_edge.i.i21
  %i.by = load ptr, ptr %i.a, align 16, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !36
  %i.cb = icmp eq ptr %0, %i.ca
  br i1 %i.cb, label %.preheader.i24, label %.critedge55, !prof !7

.preheader.i24:                                   ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !46 ; 2 uses
  %.not2425.i25 = icmp eq i32 %i.cd, 0
  br i1 %.not2425.i25, label %.critedge.i28, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i24
  %i.ce = zext i32 %i.cd to i64
  br label %bb.n

.critedge55:                                      ; preds = %bb.k, %._crit_edge.i.i21, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 188, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  unreachable

bb.n:                                             ; preds = %bb.o, %.lr.ph.i26
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i30, %bb.o ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i27
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i27 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !36
  %i.ck = icmp eq ptr %i.cj, %0
  br i1 %i.ck, label %bb.o, label %.critedge.i28

.critedge.i28:                                    ; preds = %bb.o, %bb.n, %.preheader.i24
  br i1 %i.q, label %.lr.ph28.i29, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i27
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !36
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !36
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %.not24.i31 = icmp eq i64 %indvars.iv.next.i30, %i.ce
  br i1 %.not24.i31, label %.critedge.i28, label %bb.n, !llvm.loop !52

.lr.ph28.i29:                                     ; preds = %.critedge.i28, %bb.p
  %i.cn = phi i32 [ %i.ct, %bb.p ], [ %i.bo, %.critedge.i28 ] ; 3 uses
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.n, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !36
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.p, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38

bb.p:                                             ; preds = %.lr.ph28.i29
  %i.ct = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.ct, ptr %i.o, align 8, !tbaa !46
  %i.cu = icmp sgt i32 %i.cn, 1
  br i1 %i.cu, label %.lr.ph28.i29, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38, !llvm.loop !53

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38: ; preds = %.lr.ph28.i29, %bb.p, %.critedge.i28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !21 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 320 ; 2 uses
  %i.cy = add i64 %i.l, -40
  %i.cz = lshr i64 %i.cy, 3
  %i.da = icmp ugt i64 %i.l, %i.cw
  br i1 %i.da, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ %i.l, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ]
  %.067.i.i = phi i32 [ %i.db, %.lr.ph.i.i ], [ 0, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ]
  %i.db = add nuw nsw i32 %.067.i.i, 1            ; 2 uses
  %i.dc = lshr i64 %.08.i.i, 1                    ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, %i.cw
  br i1 %i.dd, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i, !llvm.loop !44

_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38
  %.06.lcssa.i.i = phi i32 [ 0, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ], [ %i.db, %.lr.ph.i.i ]
  %i.de = load i32, ptr %i.cx, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  %.05.i.i = phi i32 [ %i.de, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i ], [ %i.dg, %bb.q ]
  %.0.i.i = phi i32 [ 1, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i ], [ %i.dj, %bb.q ] ; 2 uses
  %i.df = mul i32 %.05.i.i, 1103515245
  %i.dg = add i32 %i.df, 12345                    ; 3 uses
  %i.dh = and i32 %i.dg, 1073741824
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.di, label %bb.q, label %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i, !llvm.loop !45

_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i: ; preds = %bb.q
  store i32 %i.dg, ptr %i.cx, align 4, !tbaa !3
  %i.dk = add nsw i32 %.0.i.i, %.06.lcssa.i.i
  %i.dl = sext i32 %i.dk to i64
  %spec.select12.i = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.dl)
  %spec.select.i = trunc i64 %spec.select12.i to i32 ; 2 uses
  %i.dm = icmp slt i32 %spec.select.i, 1
  br i1 %i.dm, label %bb.r, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit, !prof !27

bb.r:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 148, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26)
  unreachable

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit: ; preds = %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i
  %i.dn = tail call noundef range(i32 1, 30) i32 @llvm.umin.i32(i32 %spec.select.i, i32 29) ; 3 uses
  store i32 %i.dn, ptr %i.cc, align 8, !tbaa !46
  %i.do = load i32, ptr %i.o, align 8, !tbaa !46  ; 5 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.preheader.preheader.i.i46, label %._crit_edge.i.i40

.preheader.preheader.i.i46:                       ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.dq = zext nneg i32 %i.do to i64              ; 3 uses
  %xtraiter90 = and i64 %i.dq, 1
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.preheader.i.i47.prol.loopexit, label %.preheader.i.i47.prol

.preheader.i.i47.prol:                            ; preds = %.preheader.preheader.i.i46
  %indvars.iv.next.i.i50.prol = add nsw i64 %i.dq, -1 ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i.i47.prol
  %.1.i.i51.prol = phi ptr [ %i.dt, %bb.s ], [ %i.n, %.preheader.i.i47.prol ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.i.i51.prol, i64 40
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i.i50.prol
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36 ; 3 uses
  %i.du = icmp ne ptr %i.dt, null
  %i.dv = icmp ult ptr %i.dt, %0
  %i.dw = and i1 %i.du, %i.dv
  br i1 %i.dw, label %bb.s, label %.preheader.i.i47.prol.loopexit.unr-lcssa, !llvm.loop !47

.preheader.i.i47.prol.loopexit.unr-lcssa:         ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50.prol
  store ptr %.1.i.i51.prol, ptr %i.dx, align 8, !tbaa !36
  br label %.preheader.i.i47.prol.loopexit

.preheader.i.i47.prol.loopexit:                   ; preds = %.preheader.i.i47.prol.loopexit.unr-lcssa, %.preheader.preheader.i.i46
  %indvars.iv.i.i48.unr = phi i64 [ %i.dq, %.preheader.preheader.i.i46 ], [ %indvars.iv.next.i.i50.prol, %.preheader.i.i47.prol.loopexit.unr-lcssa ]
  %.016.i.i49.unr = phi ptr [ %i.n, %.preheader.preheader.i.i46 ], [ %.1.i.i51.prol, %.preheader.i.i47.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i32 %i.do, 1
  br i1 %i.dy, label %._crit_edge.i.i40, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.prol.loopexit, %bb.v
  %indvars.iv.i.i48 = phi i64 [ %indvars.iv.next.i.i50.1, %bb.v ], [ %indvars.iv.i.i48.unr, %.preheader.i.i47.prol.loopexit ] ; 3 uses
  %.016.i.i49 = phi ptr [ %.1.i.i51.1, %bb.v ], [ %.016.i.i49.unr, %.preheader.i.i47.prol.loopexit ]
  %indvars.iv.next.i.i50 = add nsw i64 %indvars.iv.i.i48, -1 ; 2 uses
  br label %bb.t

._crit_edge.i.i40:                                ; preds = %.preheader.i.i47.prol.loopexit, %bb.v, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.dz = icmp slt i32 %i.do, %i.dn
  br i1 %i.dz, label %.lr.ph.preheader.i, label %.lr.ph23.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i.i40
  %i.ea = sext i32 %i.do to i64
  br label %.lr.ph.i43

bb.t:                                             ; preds = %bb.t, %.preheader.i.i47
  %.1.i.i51 = phi ptr [ %i.ed, %bb.t ], [ %.016.i.i49, %.preheader.i.i47 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1.i.i51, i64 40
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i50
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !36 ; 3 uses
  %i.ee = icmp ne ptr %i.ed, null
  %i.ef = icmp ult ptr %i.ed, %0
  %i.eg = and i1 %i.ee, %i.ef
  br i1 %i.eg, label %bb.t, label %.preheader.i.i47.1, !llvm.loop !47

.preheader.i.i47.1:                               ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50
  store ptr %.1.i.i51, ptr %i.eh, align 8, !tbaa !36
  %indvars.iv.next.i.i50.1 = add nsw i64 %indvars.iv.i.i48, -2 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.i.i47.1
  %.1.i.i51.1 = phi ptr [ %i.ek, %bb.u ], [ %.1.i.i51, %.preheader.i.i47.1 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1.i.i51.1, i64 40
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i50.1
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36 ; 3 uses
  %i.el = icmp ne ptr %i.ek, null
  %i.em = icmp ult ptr %i.ek, %0
  %i.en = and i1 %i.el, %i.em
  br i1 %i.en, label %bb.u, label %bb.v, !llvm.loop !47

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50.1
  store ptr %.1.i.i51.1, ptr %i.eo, align 8, !tbaa !36
  %i.ep = icmp sgt i64 %indvars.iv.i.i48, 2
  br i1 %i.ep, label %.preheader.i.i47, label %._crit_edge.i.i40, !llvm.loop !48

.preheader.i41:                                   ; preds = %.lr.ph.i43
  %.not21.i = icmp eq i32 %i.eu, 0
  br i1 %.not21.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %._crit_edge.i.i40, %.preheader.i41
  %.lcssa.i54 = phi i32 [ %i.eu, %.preheader.i41 ], [ %i.dn, %._crit_edge.i.i40 ] ; 3 uses
  %i.eq = zext i32 %.lcssa.i54 to i64             ; 2 uses
  %xtraiter92 = and i64 %i.eq, 1
  %i.er = icmp eq i32 %.lcssa.i54, 1
  br i1 %i.er, label %.epil.preheader, label %.lr.ph23.i.new

.lr.ph23.i.new:                                   ; preds = %.lr.ph23.i
  %unroll_iter = and i64 %i.eq, 4294967294
  br label %bb.w

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i
  %indvars.iv.i44 = phi i64 [ %i.ea, %.lr.ph.preheader.i ], [ %indvars.iv.next.i45, %.lr.ph.i43 ] ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.i44
  store ptr %i.n, ptr %i.es, align 8, !tbaa !36
  %indvars.iv.next.i45 = add nsw i64 %indvars.iv.i44, 1 ; 3 uses
  %i.et = trunc nsw i64 %indvars.iv.next.i45 to i32
  store i32 %i.et, ptr %i.o, align 8, !tbaa !46
  %i.eu = load i32, ptr %i.cc, align 8, !tbaa !46 ; 3 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next.i45, %i.ev
  br i1 %i.ew, label %.lr.ph.i43, label %.preheader.i41, !llvm.loop !49

bb.w:                                             ; preds = %bb.w, %.lr.ph23.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph23.i.new ], [ %indvars.iv.next27.i.1, %bb.w ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph23.i.new ], [ %niter.next.1, %bb.w ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i
  %i.ey = load ptr, ptr %i.ex, align 16, !tbaa !36
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv26.i ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !36
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv26.i
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !36
  store ptr %0, ptr %i.fa, align 8, !tbaa !36
  %indvars.iv.next27.i = or disjoint i64 %indvars.iv26.i, 1 ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next27.i
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !36
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.next27.i ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !36
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next27.i
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !36
  store ptr %0, ptr %i.fg, align 8, !tbaa !36
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, label %bb.w, !llvm.loop !50

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, %.lr.ph23.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next27.i.1, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod94 = trunc i32 %.lcssa.i54 to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i.epil.init
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !36
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv26.i.epil.init ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !36
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv26.i.epil.init
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !36
  store ptr %0, ptr %i.fm, align 8, !tbaa !36
  br label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit: ; preds = %.epil.preheader, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, %.preheader.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #5

declare noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @AbslInternalSpinLockWake_lts_20250512(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
