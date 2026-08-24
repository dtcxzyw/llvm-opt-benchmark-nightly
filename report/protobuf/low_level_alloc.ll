Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/low_level_alloc?download=true
inline.NumInlined: 86
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4absl12lts_2025051213base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE:bb.a
  %.not18.i = icmp eq i64 %i.az, -1283669654
  br i1 %.not18.i, label %bb.k, label %.invoke207, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %.not19.i = icmp eq ptr %i.bb, %1
  br i1 %.not19.i, label %bb.l, label %.invoke207, !prof !7

bb.l:                                             ; preds = %bb.k
  %.not20.i = icmp eq ptr %.064, %i.ac
  br i1 %.not20.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not21.i = icmp ult ptr %.064, %i.av
  br i1 %.not21.i, label %bb.n, label %.invoke207, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %.064, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %.064, i64 %i.bc
  %.not22.i = icmp ult ptr %i.bd, %i.av
  br i1 %.not22.i, label %bb.o, label %.invoke207, !prof !7

.invoke207:                                       ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.h
  %i.be = phi i32 [ 461, %bb.m ], [ 459, %bb.k ], [ 458, %bb.j ], [ 453, %bb.h ], [ 464, %bb.n ]
  %i.bf = phi ptr [ @.str.43, %bb.m ], [ @.str.41, %bb.k ], [ @.str.39, %bb.j ], [ @.str.37, %bb.h ], [ @.str.45, %bb.n ]
  %i.bg = phi ptr [ @.str.44, %bb.m ], [ @.str.42, %bb.k ], [ @.str.40, %bb.j ], [ @.str.38, %bb.h ], [ @.str.46, %bb.n ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef %i.be, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg)
          to label %.cont208 unwind label %bb.q

.cont208:                                         ; preds = %.invoke207
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bh = load i64, ptr %i.av, align 8, !tbaa !38 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %i.y
  br i1 %i.bi, label %bb.h, label %.preheader.preheader.i.i, !llvm.loop !51

bb.p:                                             ; preds = %.invoke
  %i.bj = landingpad { ptr, i32 }
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
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.critedge.thread:                                 ; preds = %bb.i, %bb.g
  %i.bl = load atomic i32, ptr %1 monotonic, align 8
  %i.bm = and i32 %i.bl, 2
  %i.bn = atomicrmw xchg ptr %1, i32 %i.bm release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.bn, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.r

bb.r:                                             ; preds = %.critedge.thread
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %i.bn) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %.loopexit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %.critedge.thread, %bb.r
  %i.bo = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.bp = shl i64 %i.bo, 4                        ; 2 uses
  %i.bq = add i64 %i.af, %i.bp                    ; 2 uses
  %.not.i.i100 = icmp ult i64 %i.bq, %i.y
  br i1 %.not.i.i100, label %bb.s, label %bb.t, !prof !27

bb.s:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 437, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36)
          to label %.noexc101 unwind label %bb.v

.noexc101:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  %i.br = sub i64 0, %i.bp
  %i.bs = and i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !18
  %i.bu = and i32 %i.bt, 2
  %.not80 = icmp eq i32 %i.bu, 0
  br i1 %.not80, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = call i64 (i64, ...) @syscall(i64 noundef 9, i64 noundef 0, i64 noundef %i.bs, i64 noundef 3, i64 noundef 34, i64 noundef -1, i64 noundef 0) #13
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.w:                                             ; preds = %bb.t
  %i.by = call ptr @mmap(ptr noundef null, i64 noundef %i.bs, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0 = phi ptr [ %i.bw, %bb.u ], [ %i.by, %bb.w ] ; 7 uses
  %i.bz = icmp eq ptr %.0, inttoptr (i64 -1 to ptr)
  br i1 %i.bz, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ca = tail call ptr @__errno_location() #15
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 570, ptr noundef nonnull @.str.31, i32 noundef %i.cb)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ab:                                            ; preds = %bb.x
  %i.cd = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %.0, i64 noundef %i.bs, ptr noundef nonnull @.str.32) #13 ; 0 uses
  %i.ce = load atomic i32, ptr %1 monotonic, align 8 ; 3 uses
  %i.cf = and i32 %i.ce, 1
  %.not.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %bb.ab
  %i.cg = or disjoint i32 %i.ce, 1
  %i.ch = cmpxchg ptr %1, i32 %i.ce, i32 %i.cg acquire monotonic, align 4
  %i.ci = extractvalue { i32, i1 } %i.ch, 0
  %.pre.i.i = and i32 %i.ci, 1
  %i.cj = icmp eq i32 %.pre.i.i, 0
  br i1 %i.cj, label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %bb.ab
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) %1) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit unwind label %bb.ac

_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i
  store i64 %i.bs, ptr %.0, align 8, !tbaa !38
  %i.ck = ptrtoint ptr %.0 to i64
  %i.cl = xor i64 %i.ck, 1283669653
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %1, ptr %i.cn, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 32
  invoke fastcc void @_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.co, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i, %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.preheader.preheader.i.i:                         ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cs = zext nneg i32 %i.ap to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ae, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cs, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 2 uses
  %.01316.i.i = phi ptr [ %i.ac, %.preheader.preheader.i.i ], [ %.1.i.i, %bb.ae ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.cv, %bb.ad ], [ %.01316.i.i, %.preheader.i.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36 ; 3 uses
  %i.cw = icmp ne ptr %i.cv, null
  %i.cx = icmp ult ptr %i.cv, %i.av
  %i.cy = and i1 %i.cw, %i.cx
  br i1 %i.cy, label %bb.ad, label %bb.ae, !llvm.loop !47

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store ptr %.1.i.i, ptr %i.cz, align 8, !tbaa !36
  %i.da = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.da, label %.preheader.i.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i, !llvm.loop !48

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i: ; preds = %bb.ae
  %i.db = load ptr, ptr %i.a, align 16, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !36
  %i.de = icmp eq ptr %i.av, %i.dd
  br i1 %i.de, label %.preheader.i, label %.invoke209, !prof !7

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %.not2425.i = icmp eq i32 %i.dg, 0
  br i1 %.not2425.i, label %.lr.ph28.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.di = zext i32 %i.dg to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ag ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !36
  %i.do = icmp eq ptr %i.dn, %i.av
  br i1 %i.do, label %bb.ag, label %.lr.ph28.i.preheader

bb.ag:                                            ; preds = %bb.af
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !36
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not24.i = icmp eq i64 %indvars.iv.next.i, %i.di
  br i1 %.not24.i, label %.lr.ph28.i.preheader, label %bb.af, !llvm.loop !52

.lr.ph28.i.preheader:                             ; preds = %bb.af, %bb.ag, %.preheader.i
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader, %bb.ah
  %4 = phi i32 [ %6, %bb.ah ], [ %i.ap, %.lr.ph28.i.preheader ] ; 3 uses
  %5 = zext nneg i32 %4 to i64
  %i.dr = getelementptr [8 x i8], ptr %i.ac, i64 %5
  %i.ds = getelementptr i8, ptr %i.dr, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ah, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit

bb.ah:                                            ; preds = %.lr.ph28.i
  %6 = add nsw i32 %4, -1                         ; 2 uses
  store i32 %6, ptr %i.ad, align 8, !tbaa !46
  %i.dv = icmp sgt i32 %4, 1
  br i1 %i.dv, label %.lr.ph28.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, !llvm.loop !53

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit: ; preds = %bb.ah, %.lr.ph28.i
  %i.dw = add i64 %i.ah, %i.y                     ; 2 uses
  %.not.i106 = icmp ult i64 %i.dw, %i.y
  br i1 %.not.i106, label %.invoke209, label %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108, !prof !27

.invoke209:                                       ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i
  %i.dx = phi i32 [ 188, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ 437, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ]
  %i.dy = phi ptr [ @.str.29, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ @.str.35, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ]
  %i.dz = phi ptr [ @.str.30, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i ], [ @.str.36, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef %i.dx, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dz)
          to label %.cont210 unwind label %bb.aj

.cont210:                                         ; preds = %.invoke209
  unreachable

_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108: ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit
  %.not81 = icmp ugt i64 %i.dw, %i.bh
  br i1 %.not81, label %.thread, label %bb.ai

.thread:                                          ; preds = %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108
  %i.ea = xor i64 %i.ay, 1283669653
  store i64 %i.ea, ptr %i.cq, align 8, !tbaa !39
  br label %bb.ap

bb.ai:                                            ; preds = %_ZN4absl12lts_2025051213base_internalL10CheckedAddEmm.exit108
  %i.eb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.y ; 5 uses
  %i.ec = sub i64 %i.bh, %i.y
  store i64 %i.ec, ptr %i.eb, align 8, !tbaa !38
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = xor i64 %i.ed, 1283669653
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !39
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %1, ptr %i.eg, align 8, !tbaa !40
  store i64 %i.y, ptr %i.av, align 8, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  invoke fastcc void @_ZN4absl12lts_2025051213base_internalL13AddToFreelistEPvPNS1_13LowLevelAlloc5ArenaE(ptr noundef nonnull %i.eh, ptr noundef nonnull %1)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %.invoke209, %bb.as, %bb.aq
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %bb.ai
  %.pre = load ptr, ptr %i.cr, align 8, !tbaa !40
  %i.ek = icmp eq ptr %.pre, %1
  %i.el = xor i64 %i.ay, 1283669653
  store i64 %i.el, ptr %i.cq, align 8, !tbaa !39
  br i1 %i.ek, label %bb.ap, label %bb.am, !prof !54

bb.am:                                            ; preds = %bb.al
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 608, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %.thread, %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !8
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !8
  %i.eq = load ptr, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  %i.er = load atomic i32, ptr %i.eq monotonic, align 4
  %i.es = and i32 %i.er, 2
  %i.et = atomicrmw xchg ptr %i.eq, i32 %i.es release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.et, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.eq, i32 noundef %i.et) #14
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i unwind label %bb.aj

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i: ; preds = %bb.aq, %bb.ap
  %i.eu = load i8, ptr %i.b, align 1, !tbaa !32, !range !34, !noundef !35
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ar, label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit

bb.ar:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ex = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.ew, ptr noundef null) #13 ; 2 uses
  %.not.i109 = icmp eq i32 %i.ex, 0
  br i1 %.not.i109, label %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 301, ptr noundef nonnull @.str.18, i32 noundef %i.ex)
          to label %.noexc111 unwind label %bb.aj

.noexc111:                                        ; preds = %bb.as
  unreachable

_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.av

bb.at:                                            ; preds = %bb.ao, %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.em, %bb.ao ], [ %i.ei, %bb.aj ], [ %i.ej, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.au

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.aa, %bb.ac, %bb.v, %bb.at, %bb.p
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %.pn, %bb.at ], [ %i.bk, %bb.q ], [ %i.cp, %bb.ac ], [ %i.bx, %bb.v ], [ %i.cc, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i8, ptr %3, align 8, !tbaa !28, !range !34, !noundef !35
  call fastcc void @_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev(i8 %.val) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn84.pn.pn.pn

bb.av:                                            ; preds = %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit, %bb.a
  %.073 = phi ptr [ %i.df, %_ZN4absl12lts_2025051213base_internal12_GLOBAL__N_19ArenaLockD2Ev.exit ], [ null, %bb.a ]
  ret ptr %.073
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051213base_internalL8CoalesceEPNS1_12_GLOBAL__N_19AllocListE(ptr noundef %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [30 x ptr], align 16              ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 11 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZNK4absl12lts_2025051213base_internal8SpinLock10AssertHeldEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.27, i64 74), i32 noundef 131, ptr noundef nonnull @.str.28)
  unreachable

_ZNK4absl12lts_2025051213base_internal8SpinLock10AssertHeldEv.exit: ; preds = %bb.c
  %i.k = load i64, ptr %i.c, align 8, !tbaa !38
  %i.l = add i64 %i.k, %i.d                       ; 4 uses
  store i64 %i.l, ptr %0, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !46   ; 6 uses
  %i.q = icmp sgt i32 %i.p, 0                     ; 3 uses
  br i1 %i.q, label %.preheader.preheader.i.i, label %._crit_edge.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK4absl12lts_2025051213base_internal8SpinLock10AssertHeldEv.exit
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 3 uses
  %i.v = icmp ne ptr %i.u, null
  %i.w = icmp ult ptr %i.u, %i.c
  %i.x = and i1 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %.preheader.i.i.prol.loopexit.unr-lcssa, !llvm.loop !47

.preheader.i.i.prol.loopexit.unr-lcssa:           ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.prol
  store ptr %.1.i.i.prol, ptr %i.y, align 8, !tbaa !36
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol.loopexit.unr-lcssa, %.preheader.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.r, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.preheader.i.i.prol.loopexit.unr-lcssa ]
  %.01316.i.i.unr = phi ptr [ %i.n, %.preheader.preheader.i.i ], [ %.1.i.i.prol, %.preheader.i.i.prol.loopexit.unr-lcssa ]
  %cond = icmp eq i32 %i.p, 1
  br i1 %cond, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %bb.h ], [ %indvars.iv.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 3 uses
  %.01316.i.i = phi ptr [ %.1.i.i.1, %bb.h ], [ %.01316.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.h, %_ZNK4absl12lts_2025051213base_internal8SpinLock10AssertHeldEv.exit
  %i.z = icmp eq i32 %i.p, 0
  br i1 %i.z, label %.critedge, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.ac, %bb.f ], [ %.01316.i.i, %.preheader.i.i ] ; 3 uses
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
  br i1 %.not2425.i, label %.critedge.i.a, label %.lr.ph.i

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
  br i1 %i.bc, label %bb.j, label %.critedge.i.a

.critedge.i.a:                                    ; preds = %bb.j, %bb.i, %.preheader.i
  br i1 %i.q, label %.lr.ph28.i, label %._crit_edge.i.i21

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not24.i = icmp eq i64 %indvars.iv.next.i, %i.aw
  br i1 %.not24.i, label %.critedge.i.a, label %bb.i, !llvm.loop !52

.lr.ph28.i:                                       ; preds = %.critedge.i.a, %bb.k
  %1 = phi i32 [ %3, %bb.k ], [ %i.p, %.critedge.i.a ] ; 5 uses
  %2 = zext nneg i32 %1 to i64
  %i.bf = getelementptr [8 x i8], ptr %i.n, i64 %2
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %.preheader.preheader.i.i32

bb.k:                                             ; preds = %.lr.ph28.i
  %3 = add nsw i32 %1, -1                         ; 2 uses
  store i32 %3, ptr %i.o, align 8, !tbaa !46
  %i.bj = icmp sgt i32 %1, 1
  br i1 %i.bj, label %.lr.ph28.i, label %.critedge55, !llvm.loop !53

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
  br i1 %6, label %.critedge55, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22

bb.l:                                             ; preds = %bb.l, %.preheader.i.i33
  %.1.i.i37 = phi ptr [ %i.bm, %bb.l ], [ %.01316.i.i35, %.preheader.i.i33 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i.i37, i64 40
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i36
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36 ; 3 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = icmp ult ptr %i.bm, %0
  %i.bp = and i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.m, !llvm.loop !47

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i36
  store ptr %.1.i.i37, ptr %i.bq, align 8, !tbaa !36
  %7 = icmp samesign ugt i64 %indvars.iv.i.i34, 1
  br i1 %7, label %.preheader.i.i33, label %._crit_edge.i.i21, !llvm.loop !48

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22: ; preds = %._crit_edge.i.i21
  %i.br = load ptr, ptr %i.a, align 16, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !36
  %i.bu = icmp eq ptr %0, %i.bt
  br i1 %i.bu, label %.preheader.i24, label %.critedge55, !prof !7

.preheader.i24:                                   ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %.not2425.i25 = icmp eq i32 %i.bw, 0
  br i1 %.not2425.i25, label %.critedge.i28, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i24
  %i.bx = zext i32 %i.bw to i64
  br label %bb.n

.critedge55:                                      ; preds = %bb.k, %._crit_edge.i.i21, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistSearchEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit.i22
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 188, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30)
  unreachable

bb.n:                                             ; preds = %bb.o, %.lr.ph.i26
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i30, %bb.o ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i27
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i27 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !36
  %i.cd = icmp eq ptr %i.cc, %0
  br i1 %i.cd, label %bb.o, label %.critedge.i28

.critedge.i28:                                    ; preds = %bb.o, %bb.n, %.preheader.i24
  br i1 %i.q, label %.lr.ph28.i29, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i27
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !36
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !36
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %.not24.i31 = icmp eq i64 %indvars.iv.next.i30, %i.bx
  br i1 %.not24.i31, label %.critedge.i28, label %bb.n, !llvm.loop !52

.lr.ph28.i29:                                     ; preds = %.critedge.i28, %bb.p
  %8 = phi i32 [ %10, %bb.p ], [ %5, %.critedge.i28 ] ; 3 uses
  %9 = zext nneg i32 %8 to i64
  %i.cg = getelementptr [8 x i8], ptr %i.n, i64 %9
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.p, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38

bb.p:                                             ; preds = %.lr.ph28.i29
  %10 = add nsw i32 %8, -1                        ; 2 uses
  store i32 %10, ptr %i.o, align 8, !tbaa !46
  %i.ck = icmp sgt i32 %8, 1
  br i1 %i.ck, label %.lr.ph28.i29, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38, !llvm.loop !53

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38: ; preds = %.lr.ph28.i29, %bb.p, %.critedge.i28
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !21 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 320 ; 2 uses
  %i.co = add i64 %i.l, -40
  %i.cp = lshr i64 %i.co, 3
  %i.cq = icmp ugt i64 %i.l, %i.cm
  br i1 %i.cq, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %i.l, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ]
  %.067.i.i = phi i32 [ %i.cr, %.lr.ph.i.i ], [ 0, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ]
  %i.cr = add nuw nsw i32 %.067.i.i, 1            ; 2 uses
  %i.cs = lshr i64 %.08.i.i, 1                    ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, %i.cm
  br i1 %i.ct, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i, !llvm.loop !44

_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38
  %.06.lcssa.i.i = phi i32 [ 0, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistDeleteEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit38 ], [ %i.cr, %.lr.ph.i.i ]
  %i.cu = load i32, ptr %i.cn, align 8, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  %.05.i.i = phi i32 [ %i.cu, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i ], [ %i.cw, %bb.q ]
  %.0.i.i = phi i32 [ 1, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i ], [ %i.cz, %bb.q ] ; 2 uses
  %i.cv = mul i32 %.05.i.i, 1103515245
  %i.cw = add i32 %i.cv, 12345                    ; 3 uses
  %i.cx = and i32 %i.cw, 1073741824
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = add nuw nsw i32 %.0.i.i, 1
  br i1 %i.cy, label %bb.q, label %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i, !llvm.loop !45

_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i: ; preds = %bb.q
  store i32 %i.cw, ptr %i.cn, align 8, !tbaa !3
  %i.da = add nsw i32 %.0.i.i, %.06.lcssa.i.i
  %i.db = sext i32 %i.da to i64
  %spec.select12.i = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.db)
  %spec.select.i = trunc i64 %spec.select12.i to i32 ; 2 uses
  %i.dc = icmp slt i32 %spec.select.i, 1
  br i1 %i.dc, label %bb.r, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit, !prof !27

bb.r:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 74), i32 noundef 148, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26)
  unreachable

_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit: ; preds = %_ZN4absl12lts_2025051213base_internalL6RandomEPj.exit.i
  %i.dd = tail call noundef range(i32 1, 30) i32 @llvm.umin.i32(i32 %spec.select.i, i32 29) ; 3 uses
  store i32 %i.dd, ptr %i.bv, align 8, !tbaa !46
  %i.de = load i32, ptr %i.o, align 8, !tbaa !46  ; 5 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader.preheader.i.i46, label %._crit_edge.i.i40

.preheader.preheader.i.i46:                       ; preds = %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit
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
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.dk = icmp ne ptr %i.dj, null
  %i.dl = icmp ult ptr %i.dj, %0
  %i.dm = and i1 %i.dk, %i.dl
  br i1 %i.dm, label %bb.s, label %.preheader.i.i47.prol.loopexit.unr-lcssa, !llvm.loop !47

.preheader.i.i47.prol.loopexit.unr-lcssa:         ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50.prol
  store ptr %.1.i.i51.prol, ptr %i.dn, align 8, !tbaa !36
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

._crit_edge.i.i40:                                ; preds = %.preheader.i.i47.prol.loopexit, %bb.v, %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistLevelsEmmPj.exit
  %i.dp = icmp slt i32 %i.de, %i.dd
  br i1 %i.dp, label %.lr.ph.preheader.i, label %.lr.ph23.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i.i40
  %i.dq = sext i32 %i.de to i64
  br label %.lr.ph.i43

bb.t:                                             ; preds = %bb.t, %.preheader.i.i47
  %.1.i.i51 = phi ptr [ %i.dt, %bb.t ], [ %.01316.i.i49, %.preheader.i.i47 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1.i.i51, i64 40
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i.i50
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36 ; 3 uses
  %i.du = icmp ne ptr %i.dt, null
  %i.dv = icmp ult ptr %i.dt, %0
  %i.dw = and i1 %i.du, %i.dv
  br i1 %i.dw, label %bb.t, label %.preheader.i.i47.1, !llvm.loop !47

.preheader.i.i47.1:                               ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50
  store ptr %.1.i.i51, ptr %i.dx, align 8, !tbaa !36
  %indvars.iv.next.i.i50.1 = add nsw i64 %indvars.iv.i.i48, -2 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.i.i47.1
  %.1.i.i51.1 = phi ptr [ %i.ea, %bb.u ], [ %.1.i.i51, %.preheader.i.i47.1 ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i.i51.1, i64 40
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next.i.i50.1
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 3 uses
  %i.eb = icmp ne ptr %i.ea, null
  %i.ec = icmp ult ptr %i.ea, %0
  %i.ed = and i1 %i.eb, %i.ec
  br i1 %i.ed, label %bb.u, label %bb.v, !llvm.loop !47

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i50.1
  store ptr %.1.i.i51.1, ptr %i.ee, align 8, !tbaa !36
  %i.ef = icmp sgt i64 %indvars.iv.i.i48, 2
  br i1 %i.ef, label %.preheader.i.i47, label %._crit_edge.i.i40, !llvm.loop !48

.preheader.i41:                                   ; preds = %.lr.ph.i43
  %.not21.i = icmp eq i32 %i.ek, 0
  br i1 %.not21.i, label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit, label %.lr.ph23.i

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
  store ptr %i.n, ptr %i.ei, align 8, !tbaa !36
  %indvars.iv.next.i45 = add nsw i64 %indvars.iv.i44, 1 ; 3 uses
  %i.ej = trunc nsw i64 %indvars.iv.next.i45 to i32
  store i32 %i.ej, ptr %i.o, align 8, !tbaa !46
  %i.ek = load i32, ptr %i.bv, align 8, !tbaa !46 ; 3 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next.i45, %i.el
  br i1 %i.em, label %.lr.ph.i43, label %.preheader.i41, !llvm.loop !49

bb.w:                                             ; preds = %bb.w, %.lr.ph23.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph23.i.new ], [ %indvars.iv.next27.i.1, %bb.w ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph23.i.new ], [ %niter.next.1, %bb.w ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !36
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv26.i ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !36
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv26.i
  store ptr %i.er, ptr %i.es, align 8, !tbaa !36
  store ptr %0, ptr %i.eq, align 8, !tbaa !36
  %indvars.iv.next27.i = or disjoint i64 %indvars.iv26.i, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next27.i
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.next27.i ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !36
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next27.i
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !36
  store ptr %0, ptr %i.ew, align 8, !tbaa !36
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
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv26.i.epil.init
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !36
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv26.i.epil.init ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !36
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv26.i.epil.init
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !36
  store ptr %0, ptr %i.fc, align 8, !tbaa !36
  br label %_ZN4absl12lts_2025051213base_internalL18LLA_SkiplistInsertEPNS1_12_GLOBAL__N_19AllocListES4_PS4_.exit
end_hunk_0
