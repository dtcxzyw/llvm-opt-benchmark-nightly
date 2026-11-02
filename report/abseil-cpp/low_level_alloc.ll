Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/low_level_alloc?download=true
inline.NumInlined: 94
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4absl12lts_2026052613base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE:bb.a
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !48 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.h
  br i1 %i.ap, label %bb.e, label %.preheader.preheader.i.i, !llvm.loop !60

.critedge.thread:                                 ; preds = %bb.f, %bb.d
  %i.aq = load atomic i32, ptr %1 monotonic, align 8
  %i.ar = and i32 %i.aq, 2
  %i.as = atomicrmw xchg ptr %1, i32 %i.ar release, align 4 ; 3 uses
  %i.at = and i32 %i.as, 4
  %.not.i98 = icmp eq i32 %i.at, 0
  br i1 %.not.i98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %i.au = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 76 ; 2 uses
  %i.aw = load atomic i32, ptr %i.av monotonic, align 4
  %i.ax = add nsw i32 %i.aw, -1
  store atomic i32 %i.ax, ptr %i.av monotonic, align 4
  br label %bb.n

bb.n:                                             ; preds = %.noexc99, %.critedge.thread
  %.not4.i = icmp ult i32 %i.as, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %i.as) #15
          to label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit: ; preds = %bb.n, %bb.o
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !30
  %i.az = shl i64 %i.ay, 4                        ; 2 uses
  %i.ba = add i64 %i.o, %i.az                     ; 2 uses
  %.not.i.i101 = icmp ult i64 %i.ba, %i.h
  br i1 %.not.i.i101, label %.invoke, label %bb.p, !prof !38

.invoke:                                          ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit, %bb.b
  %i.bb = phi i32 [ 472, %bb.b ], [ 499, %bb.k ], [ 472, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit ], [ 496, %bb.j ], [ 494, %bb.h ], [ 493, %bb.g ], [ 488, %bb.e ], [ 157, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ 472, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ]
  %i.bc = phi ptr [ @.str.35, %bb.b ], [ @.str.45, %bb.k ], [ @.str.35, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit ], [ @.str.43, %bb.j ], [ @.str.41, %bb.h ], [ @.str.39, %bb.g ], [ @.str.37, %bb.e ], [ @.str.25, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ @.str.35, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ]
  %i.bd = phi ptr [ @.str.36, %bb.b ], [ @.str.46, %bb.k ], [ @.str.36, %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit ], [ @.str.44, %bb.j ], [ @.str.42, %bb.h ], [ @.str.40, %bb.g ], [ @.str.38, %bb.e ], [ @.str.26, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ @.str.36, %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 57), i32 noundef %i.bb, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd)
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit
  %i.be = sub i64 0, %i.az
  %i.bf = and i64 %i.ba, %i.be                    ; 4 uses
  %i.bg = load i32, ptr %i.p, align 4, !tbaa !29
  %i.bh = and i32 %i.bg, 2
  %.not80 = icmp eq i32 %i.bh, 0
  br i1 %.not80, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = call i64 (i64, ...) @syscall(i64 noundef 9, i64 noundef 0, i64 noundef %i.bf, i64 noundef 3, i64 noundef 34, i64 noundef -1, i64 noundef 0) #14
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bk = call ptr @mmap(ptr noundef null, i64 noundef %i.bf, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.bj, %bb.q ], [ %i.bk, %bb.r ] ; 7 uses
  %i.bl = icmp eq ptr %.0, inttoptr (i64 -1 to ptr)
  br i1 %i.bl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bm = tail call ptr @__errno_location() #16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !52
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 57), i32 noundef 605, ptr noundef nonnull @.str.31, i32 noundef %i.bn)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bo = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %.0, i64 noundef %i.bf, ptr noundef nonnull @.str.32) #14 ; 0 uses
  %i.bp = load atomic i32, ptr %1 monotonic, align 8 ; 10 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.w, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.br = and i32 %i.bp, 2
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.x, label %.thread.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.bt = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc104:                                        ; preds = %bb.x
  %.not.i.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.not.i.i.i, label %bb.y, label %.thread13.i.i.i

bb.y:                                             ; preds = %.noexc104
  %i.bu = or disjoint i32 %i.bp, 1
  %i.bv = cmpxchg ptr %1, i32 %i.bp, i32 %i.bu acquire monotonic, align 4
  %i.bw = extractvalue { i32, i1 } %i.bv, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

.thread13.i.i.i:                                  ; preds = %.noexc104
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 76 ; 2 uses
  %i.by = load atomic i32, ptr %i.bx monotonic, align 4
  %i.bz = add nsw i32 %i.by, 1
  store atomic i32 %i.bz, ptr %i.bx monotonic, align 4
  %i.ca = or i32 %i.bp, 5
  %i.cb = cmpxchg ptr %1, i32 %i.bp, i32 %i.ca acquire monotonic, align 4 ; 2 uses
  %i.cc = extractvalue { i32, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i, label %bb.z

.thread.i.i.i:                                    ; preds = %bb.w
  %i.cd = or disjoint i32 %i.bp, 1
  %i.ce = cmpxchg ptr %1, i32 %i.bp, i32 %i.cd acquire monotonic, align 4
  %i.cf = extractvalue { i32, i1 } %i.ce, 0
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

bb.z:                                             ; preds = %.thread13.i.i.i
  %i.cg = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.z
  %i.ch = extractvalue { i32, i1 } %i.cb, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 76 ; 2 uses
  %i.cj = load atomic i32, ptr %i.ci monotonic, align 4
  %i.ck = add nsw i32 %i.cj, -1
  store atomic i32 %i.ck, ptr %i.ci monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i

_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %.noexc105, %.thread.i.i.i, %.thread13.i.i.i, %bb.y, %bb.v
  %.04.i.i.i = phi i32 [ %i.bp, %bb.v ], [ %i.ch, %.noexc105 ], [ %i.bw, %bb.y ], [ %i.bp, %.thread13.i.i.i ], [ %i.cf, %.thread.i.i.i ]
  %i.cl = and i32 %.04.i.i.i, 1
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %1) #15
          to label %_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit: ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock11TryLockImplEv.exit.i, %bb.aa
  store i64 %i.bf, ptr %.0, align 8, !tbaa !48
  %i.cn = ptrtoint ptr %.0 to i64
  %i.co = xor i64 %i.cn, 1283669653
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %1, ptr %i.cq, align 8, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 32
  invoke fastcc void @_ZN4absl12lts_2026052613base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.cr, ptr noundef nonnull %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.z, %bb.x, %bb.o, %bb.m, %_ZN4absl12lts_2026052613base_internal8SpinLock4lockEv.exit, %.invoke, %bb.t
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader.preheader.i.i:                         ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cu = zext nneg i32 %i.z to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ac, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cu, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 2 uses
  %.01316.i.i = phi ptr [ %i.l, %.preheader.preheader.i.i ], [ %.1.i.i, %bb.ac ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.cx, %bb.ab ], [ %.01316.i.i, %.preheader.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !47 ; 3 uses
  %i.cy = icmp ne ptr %i.cx, null
  %i.cz = icmp ult ptr %i.cx, %i.af
  %i.da = and i1 %i.cy, %i.cz
  br i1 %i.da, label %bb.ab, label %bb.ac, !llvm.loop !2

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.db, align 8, !tbaa !47
  %i.dc = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.dc, label %.preheader.i.i, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i, !llvm.loop !3

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i: ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.a, align 16, !tbaa !47
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !47
  %i.dg = icmp eq ptr %i.af, %i.df
  br i1 %i.dg, label %.preheader.i, label %.invoke210, !prof !17

.preheader.i:                                     ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !54 ; 2 uses
  %.not2425.i = icmp eq i32 %i.di, 0
  br i1 %.not2425.i, label %.lr.ph28.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.dk = zext i32 %i.di to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !47
  %i.dq = icmp eq ptr %i.dp, %i.af
  br i1 %i.dq, label %bb.ae, label %.lr.ph28.i.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !47
  store ptr %i.ds, ptr %i.do, align 8, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not24.i = icmp eq i64 %indvars.iv.next.i, %i.dk
  br i1 %.not24.i, label %.lr.ph28.i.preheader, label %bb.ad, !llvm.loop !6

.lr.ph28.i.preheader:                             ; preds = %bb.ad, %bb.ae, %.preheader.i
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader, %bb.af
  %3 = phi i32 [ %5, %bb.af ], [ %i.z, %.lr.ph28.i.preheader ] ; 3 uses
  %4 = zext nneg i32 %3 to i64
  %i.dt = getelementptr [8 x i8], ptr %i.l, i64 %4
  %i.du = getelementptr i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !47
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.af, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit

bb.af:                                            ; preds = %.lr.ph28.i
  %5 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %5, ptr %i.m, align 8, !tbaa !54
  %i.dx = icmp sgt i32 %3, 1
  br i1 %i.dx, label %.lr.ph28.i, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, !llvm.loop !7

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit: ; preds = %bb.af, %.lr.ph28.i
  %i.dy = add i64 %i.r, %i.h                      ; 2 uses
  %.not.i109 = icmp ult i64 %i.dy, %i.h
  br i1 %.not.i109, label %.invoke210, label %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit111, !prof !38

.invoke210:                                       ; preds = %bb.ah, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.dz = phi i32 [ 197, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ 472, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ], [ 643, %bb.ah ]
  %i.ea = phi ptr [ @.str.29, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ @.str.35, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ], [ @.str.33, %bb.ah ]
  %i.eb = phi ptr [ @.str.30, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ @.str.36, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ], [ @.str.34, %bb.ah ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 57), i32 noundef %i.dz, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb)
          to label %.cont211 unwind label %bb.ai

.cont211:                                         ; preds = %.invoke210
  unreachable

_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit111: ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit
  %.not81 = icmp ugt i64 %i.dy, %i.ao
  br i1 %.not81, label %.thread, label %bb.ag

.thread:                                          ; preds = %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit111
  %i.ec = xor i64 %i.ai, 1283669653
  store i64 %i.ec, ptr %i.cs, align 8, !tbaa !49
  br label %bb.aj

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052613base_internalL10CheckedAddEmm.exit111
  %i.ed = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.h ; 5 uses
  %i.ee = sub nuw i64 %i.ao, %i.h
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !48
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = xor i64 %i.ef, 1283669653
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !49
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %1, ptr %i.ei, align 8, !tbaa !50
  store i64 %i.h, ptr %i.af, align 8, !tbaa !48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  invoke fastcc void @_ZN4absl12lts_2026052613base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.ej, ptr noundef nonnull %1)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.pre = load ptr, ptr %i.ct, align 8, !tbaa !50
  %i.ek = icmp eq ptr %.pre, %1
  %i.el = xor i64 %i.ai, 1283669653
  store i64 %i.el, ptr %i.cs, align 8, !tbaa !49
  br i1 %i.ek, label %bb.aj, label %.invoke210, !prof !61

bb.ai:                                            ; preds = %.invoke210, %bb.ao, %bb.am, %bb.ak, %bb.ag
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %.thread, %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !28
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !42 ; 3 uses
  %i.es = load atomic i32, ptr %i.er monotonic, align 4
  %i.et = and i32 %i.es, 2
  %i.eu = atomicrmw xchg ptr %i.er, i32 %i.et release, align 4 ; 3 uses
  %i.ev = and i32 %i.eu, 4
  %.not.i.i112 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i112, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc114 unwind label %bb.ai

.noexc114:                                        ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 76 ; 2 uses
  %i.ey = load atomic i32, ptr %i.ex monotonic, align 4
  %i.ez = add nsw i32 %i.ey, -1
  store atomic i32 %i.ez, ptr %i.ex monotonic, align 4
  br label %bb.al

bb.al:                                            ; preds = %.noexc114, %bb.aj
  %.not4.i.i = icmp ult i32 %i.eu, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.er, i32 noundef %i.eu) #15
          to label %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit.i: ; preds = %bb.am, %bb.al
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !43, !range !44, !noundef !45
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.an, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit

bb.an:                                            ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fe = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.fd, ptr noundef null) #14 ; 2 uses
  %.not.i113 = icmp eq i32 %i.fe, 0
  br i1 %.not.i113, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 57), i32 noundef 336, ptr noundef nonnull @.str.18, i32 noundef %i.fe)
          to label %.noexc116 unwind label %bb.ai

.noexc116:                                        ; preds = %bb.ao
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit: ; preds = %_ZN4absl12lts_2026052613base_internal8SpinLock6unlockEv.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.em, %bb.ai ], [ %lpad.loopexit.split-lp235, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val = load i8, ptr %2, align 8, !tbaa !53, !range !44, !noundef !45
  call fastcc void @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_19ArenaLockD2Ev(i8 %.val) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn84.pn.pn.pn

bb.ap:                                            ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit, %bb.a
  %.073 = phi ptr [ %i.dh, %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit ], [ null, %bb.a ]
  ret ptr %.073
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() local_unnamed_addr #6

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613base_internalL8CoalesceEPNS1_12_GLOBAL__N_19AllocListE(ptr noundef %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [30 x ptr], align 16              ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 11 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 5 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZNK4absl12lts_2026052613base_internal8SpinLock10AssertHeldEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.27, i64 57), i32 noundef 160, ptr noundef nonnull @.str.28)
  unreachable

_ZNK4absl12lts_2026052613base_internal8SpinLock10AssertHeldEv.exit: ; preds = %bb.c
  %i.k = load i64, ptr %i.c, align 8, !tbaa !48
  %i.l = add i64 %i.k, %i.d                       ; 4 uses
  store i64 %i.l, ptr %0, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54   ; 6 uses
  %i.q = icmp sgt i32 %i.p, 0                     ; 3 uses
  br i1 %i.q, label %.preheader.preheader.i.i, label %._crit_edge.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK4absl12lts_2026052613base_internal8SpinLock10AssertHeldEv.exit
  %i.r = zext nneg i32 %i.p to i64                ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.preheader.i.i
  %indvars.iv.next.i.i.prol = add nsw i64 %i.r, -1 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i.prol
  %.1.i.i.prol = phi ptr [ %i.u, %bb.e ], [ %i.n, %.preheader.i.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i.i.prol, i64 40
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.prol
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 3 uses
  %i.v = icmp ne ptr %i.u, null
  %i.w = icmp ult ptr %i.u, %i.c
  %i.x = and i1 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %.preheader.i.i.prol.loopexit.unr-lcssa, !llvm.loop !2

.preheader.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.prol
  store ptr %.1.i.i.prol, ptr %i.y, align 16, !tbaa !47
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol.loopexit.unr-lcssa, %.preheader.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.r, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.preheader.i.i.prol.loopexit.unr-lcssa ]
  %.01316.i.i.unr = phi ptr [ %i.n, %.preheader.preheader.i.i ], [ %.1.i.i.prol, %.preheader.i.i.prol.loopexit.unr-lcssa ]
  %cond = icmp eq i32 %i.p, 1
  br i1 %cond, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %bb.h ], [ %indvars.iv.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 3 uses
  %.01316.i.i = phi ptr [ %.1.i.i.1, %bb.h ], [ %.01316.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.h, %_ZNK4absl12lts_2026052613base_internal8SpinLock10AssertHeldEv.exit
  %i.z = icmp eq i32 %i.p, 0
  br i1 %i.z, label %.critedge, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.ac, %bb.f ], [ %.01316.i.i, %.preheader.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 3 uses
  %i.ad = icmp ne ptr %i.ac, null
  %i.ae = icmp ult ptr %i.ac, %i.c
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %.preheader.i.i.1, !llvm.loop !2

.preheader.i.i.1:                                 ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.ag, align 8, !tbaa !47
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i.i.1
  %.1.i.i.1 = phi ptr [ %i.aj, %bb.g ], [ %.1.i.i, %.preheader.i.i.1 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.1, i64 40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 3 uses
  %i.ak = icmp ne ptr %i.aj, null
  %i.al = icmp ult ptr %i.aj, %i.c
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %bb.h, !llvm.loop !2

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store ptr %.1.i.i.1, ptr %i.an, align 8, !tbaa !47
  %i.ao = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ao, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !3

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i: ; preds = %.preheader.i.i.prol.loopexit, %._crit_edge.i.i
  %i.ap = load ptr, ptr %i.a, align 16, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.as = icmp eq ptr %i.c, %i.ar
  br i1 %i.as, label %.preheader.i, label %.critedge, !prof !17

.preheader.i:                                     ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !54 ; 2 uses
  %.not2425.i = icmp eq i32 %i.au, 0
  br i1 %.not2425.i, label %.critedge.i.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aw = zext i32 %i.au to i64
  br label %bb.i

.critedge:                                        ; preds = %._crit_edge.i.i, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 57), i32 noundef 197, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  unreachable

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bc = icmp eq ptr %i.bb, %i.c
  br i1 %i.bc, label %bb.j, label %.critedge.i.a

.critedge.i.a:                                    ; preds = %bb.j, %bb.i, %.preheader.i
  br i1 %i.q, label %.lr.ph28.i, label %._crit_edge.i.i21

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not24.i = icmp eq i64 %indvars.iv.next.i, %i.aw
  br i1 %.not24.i, label %.critedge.i.a, label %bb.i, !llvm.loop !6

.lr.ph28.i:                                       ; preds = %.critedge.i.a, %bb.k
  %1 = phi i32 [ %3, %bb.k ], [ %i.p, %.critedge.i.a ] ; 5 uses
  %2 = zext nneg i32 %1 to i64
  %i.bf = getelementptr [8 x i8], ptr %i.n, i64 %2
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %.preheader.preheader.i.i32

bb.k:                                             ; preds = %.lr.ph28.i
  %3 = add nsw i32 %1, -1                         ; 2 uses
  store i32 %3, ptr %i.o, align 8, !tbaa !54
  %i.bj = icmp sgt i32 %1, 1
  br i1 %i.bj, label %.lr.ph28.i, label %.critedge55, !llvm.loop !7

.preheader.preheader.i.i32:                       ; preds = %.lr.ph28.i
  %4 = zext nneg i32 %1 to i64
  br label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %bb.m, %.preheader.preheader.i.i32
  %indvars.iv.i.i34 = phi i64 [ %4, %.preheader.preheader.i.i32 ], [ %indvars.iv.next.i.i36, %bb.m ] ; 2 uses
  %.01316.i.i35 = phi ptr [ %i.n, %.preheader.preheader.i.i32 ], [ %.1.i.i37, %bb.m ]
  %indvars.iv.next.i.i36 = add nsw i64 %indvars.iv.i.i34, -1 ; 3 uses
  br label %bb.l

._crit_edge.i.i21:                                ; preds = %bb.m, %.critedge.i.a
  %5 = phi i32 [ %i.p, %.critedge.i.a ], [ %1, %bb.m ] ; 2 uses
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %.critedge55, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22

bb.l:                                             ; preds = %bb.l, %.preheader.i.i33
  %.1.i.i37 = phi ptr [ %i.bm, %bb.l ], [ %.01316.i.i35, %.preheader.i.i33 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i.i37, i64 40
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i36
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47 ; 3 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = icmp ult ptr %i.bm, %0
  %i.bp = and i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.m, !llvm.loop !2

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i36
  store ptr %.1.i.i37, ptr %i.bq, align 8, !tbaa !47
  %7 = icmp samesign ugt i64 %indvars.iv.i.i34, 1
  br i1 %7, label %.preheader.i.i33, label %._crit_edge.i.i21, !llvm.loop !3

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22: ; preds = %._crit_edge.i.i21
  %i.br = load ptr, ptr %i.a, align 16, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !47
  %i.bu = icmp eq ptr %0, %i.bt
  br i1 %i.bu, label %.preheader.i24, label %.critedge55, !prof !17

.preheader.i24:                                   ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !54 ; 2 uses
  %.not2425.i25 = icmp eq i32 %i.bw, 0
  br i1 %.not2425.i25, label %.critedge.i28, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i24
  %i.bx = zext i32 %i.bw to i64
  br label %bb.n

.critedge55:                                      ; preds = %bb.k, %._crit_edge.i.i21, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 57), i32 noundef 197, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  unreachable

bb.n:                                             ; preds = %bb.o, %.lr.ph.i26
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i30, %bb.o ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i27
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i27 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47
  %i.cd = icmp eq ptr %i.cc, %0
  br i1 %i.cd, label %bb.o, label %.critedge.i28

.critedge.i28:                                    ; preds = %bb.o, %bb.n, %.preheader.i24
  br i1 %i.q, label %.lr.ph28.i29, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i27
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !47
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !47
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %.not24.i31 = icmp eq i64 %indvars.iv.next.i30, %i.bx
  br i1 %.not24.i31, label %.critedge.i28, label %bb.n, !llvm.loop !6

.lr.ph28.i29:                                     ; preds = %.critedge.i28, %bb.p
  %8 = phi i32 [ %10, %bb.p ], [ %5, %.critedge.i28 ] ; 3 uses
  %9 = zext nneg i32 %8 to i64
  %i.cg = getelementptr [8 x i8], ptr %i.n, i64 %9
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.p, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38

bb.p:                                             ; preds = %.lr.ph28.i29
  %10 = add nsw i32 %8, -1                        ; 2 uses
  store i32 %10, ptr %i.o, align 8, !tbaa !54
  %i.ck = icmp sgt i32 %8, 1
  br i1 %i.ck, label %.lr.ph28.i29, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38, !llvm.loop !7

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38: ; preds = %.lr.ph28.i29, %bb.p, %.critedge.i28
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 320 ; 2 uses
  %i.co = add i64 %i.l, -40
  %i.cp = lshr i64 %i.co, 3
  %i.cq = icmp ugt i64 %i.l, %i.cm
  br i1 %i.cq, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %i.l, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ]
  %.067.i.i = phi i32 [ %i.cr, %.lr.ph.i.i ], [ 0, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ]
  %i.cr = add nuw nsw i32 %.067.i.i, 1            ; 2 uses
  %i.cs = lshr i64 %.08.i.i, 1                    ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, %i.cm
  br i1 %i.ct, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i, !llvm.loop !0

_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38
  %.06.lcssa.i.i = phi i32 [ 0, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ], [ %i.cr, %.lr.ph.i.i ]
  %i.cu = load i32, ptr %i.cn, align 8, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i
  %.05.i.i = phi i32 [ %i.cu, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ %i.cw, %bb.q ]
  %.0.i.i = phi i32 [ 1, %_ZN4absl12lts_2026052613base_internalL7IntLog2Emm.exit.i ], [ %i.cz, %bb.q ] ; 2 uses
  %i.cv = mul i32 %.05.i.i, 1103515245
  %i.cw = add i32 %i.cv, 12345                    ; 3 uses
  %i.cx = and i32 %i.cw, 1073741824
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.cy, label %bb.q, label %_ZN4absl12lts_2026052613base_internalL6RandomEPj.exit.i, !llvm.loop !1

_ZN4absl12lts_2026052613base_internalL6RandomEPj.exit.i: ; preds = %bb.q
  store i32 %i.cw, ptr %i.cn, align 8, !tbaa !52
  %i.da = add nsw i32 %.0.i.i, %.06.lcssa.i.i
  %i.db = sext i32 %i.da to i64
  %spec.select12.i = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.db)
  %spec.select.i = trunc i64 %spec.select12.i to i32 ; 2 uses
  %i.dc = icmp slt i32 %spec.select.i, 1
  br i1 %i.dc, label %bb.r, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistLevelsEmmPj.exit, !prof !38

bb.r:                                             ; preds = %_ZN4absl12lts_2026052613base_internalL6RandomEPj.exit.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 57), i32 noundef 157, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26)
  unreachable

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistLevelsEmmPj.exit: ; preds = %_ZN4absl12lts_2026052613base_internalL6RandomEPj.exit.i
  %i.dd = tail call noundef range(i32 1, 30) i32 @llvm.umin.i32(i32 %spec.select.i, i32 29) ; 3 uses
  store i32 %i.dd, ptr %i.bv, align 8, !tbaa !54
  %i.de = load i32, ptr %i.o, align 8, !tbaa !54  ; 5 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader.preheader.i.i46, label %._crit_edge.i.i40

.preheader.preheader.i.i46:                       ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.dg = zext nneg i32 %i.de to i64              ; 3 uses
  %xtraiter90.a = and i64 %i.dg, 1
  %lcmp.mod91.not.a = icmp eq i64 %xtraiter90.a, 0
  br i1 %lcmp.mod91.not.a, label %.preheader.i.i47.prol.loopexit, label %.preheader.i.i47.prol

.preheader.i.i47.prol:                            ; preds = %.preheader.preheader.i.i46
  %indvars.iv.next.i.i50.prol = add nsw i64 %i.dg, -1 ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.i.i47.prol
  %.1.i.i51.prol = phi ptr [ %i.dj, %bb.s ], [ %i.n, %.preheader.i.i47.prol ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i.i51.prol, i64 40
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next.i.i50.prol
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !47 ; 3 uses
  %i.dk = icmp ne ptr %i.dj, null
  %i.dl = icmp ult ptr %i.dj, %0
  %i.dm = and i1 %i.dk, %i.dl
  br i1 %i.dm, label %bb.s, label %.preheader.i.i47.prol.loopexit.unr-lcssa, !llvm.loop !2

.preheader.i.i47.prol.loopexit.unr-lcssa:         ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50.prol
  store ptr %.1.i.i51.prol, ptr %i.dn, align 16, !tbaa !47
  br label %.preheader.i.i47.prol.loopexit

.preheader.i.i47.prol.loopexit:                   ; preds = %.preheader.i.i47.prol.loopexit.unr-lcssa, %.preheader.preheader.i.i46
  %indvars.iv.i.i48.unr = phi i64 [ %i.dg, %.preheader.preheader.i.i46 ], [ %indvars.iv.next.i.i50.prol, %.preheader.i.i47.prol.loopexit.unr-lcssa ]
  %.01316.i.i49.unr = phi ptr [ %i.n, %.preheader.preheader.i.i46 ], [ %.1.i.i51.prol, %.preheader.i.i47.prol.loopexit.unr-lcssa ]
  %i.do = icmp eq i32 %i.de, 1
  br i1 %i.do, label %._crit_edge.i.i40, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.preheader.i.i47.prol.loopexit, %bb.v
  %indvars.iv.i.i48 = phi i64 [ %indvars.iv.next.i.i50.1, %bb.v ], [ %indvars.iv.i.i48.unr, %.preheader.i.i47.prol.loopexit ] ; 3 uses
  %.01316.i.i49 = phi ptr [ %.1.i.i51.1, %bb.v ], [ %.01316.i.i49.unr, %.preheader.i.i47.prol.loopexit ]
  %indvars.iv.next.i.i50 = add nsw i64 %indvars.iv.i.i48, -1 ; 2 uses
  br label %bb.t

._crit_edge.i.i40:                                ; preds = %.preheader.i.i47.prol.loopexit, %bb.v, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.dp = icmp slt i32 %i.de, %i.dd
  br i1 %i.dp, label %.lr.ph.preheader.i, label %.lr.ph23.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i.i40
  %i.dq = sext i32 %i.de to i64
  br label %.lr.ph.i43

bb.t:                                             ; preds = %bb.t, %.preheader.i.i47
  %.1.i.i51 = phi ptr [ %i.dt, %bb.t ], [ %.01316.i.i49, %.preheader.i.i47 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.i.i51, i64 40
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i.i50
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47 ; 3 uses
  %i.du = icmp ne ptr %i.dt, null
  %i.dv = icmp ult ptr %i.dt, %0
  %i.dw = and i1 %i.du, %i.dv
  br i1 %i.dw, label %bb.t, label %.preheader.i.i47.1, !llvm.loop !2

.preheader.i.i47.1:                               ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50
  store ptr %.1.i.i51, ptr %i.dx, align 8, !tbaa !47
  %indvars.iv.next.i.i50.1 = add nsw i64 %indvars.iv.i.i48, -2 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.i.i47.1
  %.1.i.i51.1 = phi ptr [ %i.ea, %bb.u ], [ %.1.i.i51, %.preheader.i.i47.1 ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i.i51.1, i64 40
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next.i.i50.1
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47 ; 3 uses
  %i.eb = icmp ne ptr %i.ea, null
  %i.ec = icmp ult ptr %i.ea, %0
  %i.ed = and i1 %i.eb, %i.ec
  br i1 %i.ed, label %bb.u, label %bb.v, !llvm.loop !2

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50.1
  store ptr %.1.i.i51.1, ptr %i.ee, align 8, !tbaa !47
  %i.ef = icmp sgt i64 %indvars.iv.i.i48, 2
  br i1 %i.ef, label %.preheader.i.i47, label %._crit_edge.i.i40, !llvm.loop !3

.preheader.i41:                                   ; preds = %.lr.ph.i43
  %.not21.i = icmp eq i32 %i.ek, 0
  br i1 %.not21.i, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %._crit_edge.i.i40, %.preheader.i41
  %.lcssa.i54 = phi i32 [ %i.ek, %.preheader.i41 ], [ %i.dd, %._crit_edge.i.i40 ] ; 3 uses
  %i.eg = zext i32 %.lcssa.i54 to i64             ; 2 uses
  %xtraiter92 = and i64 %i.eg, 1
  %i.eh = icmp eq i32 %.lcssa.i54, 1
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph23.i.new

.lr.ph23.i.new:                                   ; preds = %.lr.ph23.i
  %unroll_iter = and i64 %i.eg, 4294967294
  br label %bb.w

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i
  %indvars.iv.i44 = phi i64 [ %i.dq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i45, %.lr.ph.i43 ] ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.i44
  store ptr %i.n, ptr %i.ei, align 8, !tbaa !47
  %indvars.iv.next.i45 = add nsw i64 %indvars.iv.i44, 1 ; 3 uses
  %i.ej = trunc nsw i64 %indvars.iv.next.i45 to i32
  store i32 %i.ej, ptr %i.o, align 8, !tbaa !54
  %i.ek = load i32, ptr %i.bv, align 8, !tbaa !54 ; 3 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next.i45, %i.el
  br i1 %i.em, label %.lr.ph.i43, label %.preheader.i41, !llvm.loop !4

bb.w:                                             ; preds = %bb.w, %.lr.ph23.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph23.i.new ], [ %indvars.iv.next27.i.1, %bb.w ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph23.i.new ], [ %niter.next.1, %bb.w ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !47
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv26.i ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv26.i
  store ptr %i.er, ptr %i.es, align 8, !tbaa !47
  store ptr %0, ptr %i.eq, align 8, !tbaa !47
  %indvars.iv.next27.i = or disjoint i64 %indvars.iv26.i, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next27.i
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !47
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.next27.i ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !47
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next27.i
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !47
  store ptr %0, ptr %i.ew, align 8, !tbaa !47
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, label %bb.w, !llvm.loop !5

_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa, %.lr.ph23.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next27.i.1, %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod94 = trunc i32 %.lcssa.i54 to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i.epil.init
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !47
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv26.i.epil.init ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !47
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv26.i.epil.init
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !47
  store ptr %0, ptr %i.fc, align 8, !tbaa !47
  br label %_ZN4absl12lts_2026052613base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit
end_hunk_0
