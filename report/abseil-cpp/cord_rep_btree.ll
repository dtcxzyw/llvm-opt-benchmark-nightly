inline.NumInlined: 757
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE1EEEPS2_S5_S5_:bb.a

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i, i64 15
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.l, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.b, !llvm.loop !35

.critedge.thread.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load atomic i32, ptr %i.u acquire, align 4
  %i.w = icmp eq i32 %i.v, 2
  %i.x = zext i1 %i.w to i32
  %i.y = add nuw nsw i32 %i.i, %i.x               ; 2 uses
  store i32 %i.y, ptr %2, align 8, !tbaa !36
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.b
  %i.z = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.014.lcssa.i = phi ptr [ %0, %bb.a ], [ %.01416.i, %.critedge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.z, %.critedge.loopexit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.ab = load atomic i32, ptr %i.aa acquire, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  %i.ad = zext i1 %i.ac to i32
  %i.ae = add nuw nsw i32 %.0.lcssa.i, %i.ad      ; 3 uses
  store i32 %i.ae, ptr %2, align 8, !tbaa !36
  %i.af = icmp slt i32 %.0.lcssa.i, %i.i
  br i1 %i.af, label %.lr.ph24.i, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = zext i32 %.0.lcssa.i to i64
  %sext = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph24.i
  %indvars.iv27.i = phi i64 [ %i.ah, %.lr.ph24.i ], [ %indvars.iv.next28.i, %bb.d ] ; 2 uses
  %.11522.i = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %i.ao, %bb.d ] ; 3 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.ai, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.11522.i, i64 15
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr i8, ptr %.11522.i, i64 8
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.ap = icmp slt i64 %indvars.iv.next28.i, %sext
  br i1 %i.ap, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, !llvm.loop !39

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit: ; preds = %bb.d, %.critedge.thread.i, %.critedge.i
  %.val = phi i32 [ %i.ae, %.critedge.i ], [ %i.y, %.critedge.thread.i ], [ %i.ae, %bb.d ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.t, %.critedge.thread.i ], [ %i.ao, %bb.d ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9   ; 3 uses
  %i.ay = zext i8 %i.ax to i64                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !9   ; 3 uses
  %i.bb = zext i8 %i.ba to i64                    ; 3 uses
  %i.bc = add nuw nsw i64 %i.as, %i.ay
  %i.bd = add nuw nsw i64 %i.av, %i.bb
  %i.be = sub nsw i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 7
  br i1 %i.bf, label %bb.e, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit
  %i.bg = icmp slt i32 %i.i, %.val
  br i1 %i.bg, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i64, ptr %.115.lcssa.i, align 8, !tbaa !10
  %i.bi = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 2, ptr %i.bj, align 4, !tbaa !28
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.bk, ptr noundef nonnull align 4 dereferenceable(52) %i.bl, i64 52, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.bn = load i8, ptr %i.at, align 2, !tbaa !9   ; 2 uses
  %i.bo = load i8, ptr %i.aq, align 1, !tbaa !9   ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %.not10.i.i = icmp eq i8 %i.bn, %i.bo
  br i1 %.not10.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.br = zext i8 %i.bn to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.br
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.bs, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bt = load ptr, ptr %.011.i.i, align 8, !tbaa !19, !nonnull !30, !noundef !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i32 2 monotonic, align 4 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.bq
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, label %.lr.ph.i.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i8, ptr %i.az, align 2, !tbaa !9   ; 2 uses
  %.pre68 = load i8, ptr %i.aw, align 1, !tbaa !9 ; 2 uses
  %.pre69 = zext i8 %.pre to i64
  %.pre70 = zext i8 %.pre68 to i64
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, %bb.e, %bb.f
  %.pre-phi71 = phi i64 [ %.pre70, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ay, %bb.e ], [ %i.ay, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre69, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.bb, %bb.e ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bx = phi i8 [ %.pre68, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ax, %bb.e ], [ %i.ax, %bb.f ]
  %i.by = phi i8 [ %.pre, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ba, %bb.e ], [ %i.ba, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.bi, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %.115.lcssa.i, %bb.e ], [ %i.bi, %bb.f ] ; 11 uses
  %.sroa.3.0.i = phi i32 [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ 0, %bb.e ], [ 1, %bb.f ] ; 3 uses
  %.sroa.0.0.i83 = ptrtoaddr ptr %.sroa.0.0.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.pre-phi ; 5 uses
  %i.cb = sub nsw i64 %.pre-phi71, %.pre-phi
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 14 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9   ; 3 uses
  %i.ce = zext i8 %i.cd to i64                    ; 3 uses
  %.not.i.i46 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i46, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %bb.g, !prof !40

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9   ; 2 uses
  %i.ch = zext i8 %i.cg to i64
  %i.ci = sub nsw i64 %i.ch, %i.ce                ; 6 uses
  store i8 0, ptr %i.cc, align 1, !tbaa !9
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !9
  %i.ck = icmp ult i64 %i.ci, 7
  tail call void @llvm.assume(i1 %i.ck)
  %.not12.i.i = icmp eq i8 %i.cg, %i.cd
  br i1 %.not12.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ci, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i47
  %n.vec = and i64 %i.ci, 6                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %i.ce
  %wide.load = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !19
  store <2 x ptr> %wide.load, ptr %i.cm, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i47, %middle.block
  %.011.i.i48.ph = phi i64 [ 0, %.lr.ph.i.i47 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i48 = phi i64 [ %i.cs, %scalar.ph ], [ %.011.i.i48.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.cl, i64 %.011.i.i48 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.ce
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !19
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !19
  %i.cs = add nuw nsw i64 %.011.i.i48, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cs, %i.ci
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i, label %scalar.ph, !llvm.loop !115

_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i: ; preds = %scalar.ph, %middle.block, %bb.g, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !9   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.cb, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i
  %.not11.i = icmp eq i8 %i.bx, %i.by
  br i1 %.not11.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i
  %i.cw = zext i8 %i.cu to i64                    ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %3 = shl nuw nsw i64 %.pre-phi71, 3
  %i.cy = add nsw i64 %3, -8
  %4 = shl nuw nsw i64 %.pre-phi, 3
  %5 = sub nsw i64 %i.cy, %4                      ; 2 uses
  %6 = lshr exact i64 %5, 3
  %i.cz = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check85 = icmp ult i64 %5, 136
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i49
  %i.da = shl nuw nsw i64 %i.cw, 3
  %i.db = add i64 %i.da, %.sroa.0.0.i83
  %i.dc = shl nuw nsw i64 %.pre-phi, 3
  %i.dd = add i64 %i.dc, %i.a
  %i.de = sub i64 %i.dd, %i.db
  %diff.check = icmp ugt i64 %i.de, -32
  br i1 %diff.check, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck
  %n.vec87 = and i64 %i.cz, 4611686018427387900   ; 4 uses
  %i.df = add nuw nsw i64 %n.vec87, %i.cw         ; 2 uses
  %i.dg = shl i64 %n.vec87, 3
  %i.dh = getelementptr i8, ptr %i.ca, i64 %i.dg
  %invariant.gep = getelementptr [8 x i8], ptr %i.cx, i64 %i.cw
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 3 uses
  %i.di = shl i64 %index89, 3
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load90 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !19
  %wide.load91 = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !19
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index89 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load90, ptr %gep, align 8, !tbaa !19
  store <2 x ptr> %wide.load91, ptr %i.dk, align 8, !tbaa !19
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.dl = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.dl, label %middle.block93, label %vector.body88, !llvm.loop !116

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %i.cz, %n.vec87
  br i1 %cmp.n94, label %._crit_edge.loopexit.i, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck, %.lr.ph.i49, %middle.block93
  %.013.i.ph = phi i64 [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i49 ], [ %i.df, %middle.block93 ]
  %.0912.i.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i49 ], [ %i.dh, %middle.block93 ]
  br label %scalar.ph84

._crit_edge.loopexit.i:                           ; preds = %scalar.ph84, %middle.block93
  %.lcssa = phi i64 [ %i.df, %middle.block93 ], [ %i.do, %scalar.ph84 ]
  %i.dm = trunc i64 %.lcssa to i8
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %scalar.ph84
  %.013.i = phi i64 [ %i.do, %scalar.ph84 ], [ %.013.i.ph, %scalar.ph84.preheader ] ; 2 uses
  %.0912.i = phi ptr [ %i.dq, %scalar.ph84 ], [ %.0912.i.ph, %scalar.ph84.preheader ] ; 2 uses
  %i.dn = load ptr, ptr %.0912.i, align 8, !tbaa !19
  %i.do = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.013.i
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dq, %i.cv
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %scalar.ph84, !llvm.loop !117

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i, %._crit_edge.loopexit.i
  %.0.lcssa.i50 = phi i8 [ %i.cu, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AlignBeginEv.exit.i ], [ %i.dm, %._crit_edge.loopexit.i ]
  store i8 %.0.lcssa.i50, ptr %i.ct, align 1, !tbaa !9
  %i.dr = load i64, ptr %1, align 8, !tbaa !10
  %i.ds = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !10
  %i.dt = add i64 %i.ds, %i.dr
  store i64 %i.dt, ptr %.sroa.0.0.i, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dv = load atomic i32, ptr %i.du acquire, align 8
  %i.dw = icmp eq i32 %i.dv, 2
  br i1 %i.dw, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %bb.h

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #20
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  %i.dx = load i8, ptr %i.az, align 2, !tbaa !9   ; 2 uses
  %i.dy = load i8, ptr %i.aw, align 1, !tbaa !9   ; 2 uses
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dz
  %.not61 = icmp eq i8 %i.dx, %i.dy
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.eb = zext i8 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.eb
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.ed = atomicrmw sub ptr %i.du, i32 2 acq_rel, align 4
  %.not.i53 = icmp eq i32 %i.ed, 2
  br i1 %.not.i53, label %bb.i, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !32

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04162 = phi ptr [ %i.eh, %.lr.ph ], [ %i.ec, %.lr.ph.preheader ] ; 2 uses
  %i.ee = load ptr, ptr %.04162, align 8, !tbaa !19, !nonnull !30, !noundef !30
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = atomicrmw add ptr %i.ef, i32 2 monotonic, align 4 ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.04162, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eh, %i.ea
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.i, %._crit_edge, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit
  %.sroa.016.0 = phi ptr [ %.sroa.0.0.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ %1, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ], [ %.sroa.0.0.i, %._crit_edge ], [ %.sroa.0.0.i, %bb.i ] ; 6 uses
  %.sroa.8.0 = phi i32 [ %.sroa.3.0.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ 2, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS4_i.exit ], [ %.sroa.3.0.i, %._crit_edge ], [ %.sroa.3.0.i, %bb.i ] ; 2 uses
  %.not43 = icmp eq i8 %i.d, %i.g
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  %i.ei = call fastcc noundef ptr @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %0, i32 noundef %i.i, i64 noundef %i.b, ptr nonnull %.sroa.016.0, i32 %.sroa.8.0)
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  switch i32 %.sroa.8.0, label %default.unreachable [
    i32 2, label %bb.l
    i32 1, label %bb.o
    i32 0, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.ej = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 2, ptr %i.ek, align 4, !tbaa !28
  %i.el = load i64, ptr %0, align 8, !tbaa !10
  %i.em = load i64, ptr %.sroa.016.0, align 8, !tbaa !10
  %i.en = add i64 %i.em, %i.el
  store i64 %i.en, ptr %i.ej, align 8, !tbaa !10
  %i.eo = load i8, ptr %i.c, align 1, !tbaa !9
  %i.ep = add i8 %i.eo, 1                         ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i8 3, ptr %i.eq, align 4, !tbaa !29
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 13
  store i8 %i.ep, ptr %i.er, align 1, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  store i8 0, ptr %i.es, align 2, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 15
  store i8 2, ptr %i.et, align 1, !tbaa !9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %0, ptr %i.eu, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr %.sroa.016.0, ptr %i.ev, align 8, !tbaa !19
  %i.ew = icmp ugt i8 %i.ep, 11
  br i1 %i.ew, label %bb.m, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.ex = tail call noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef nonnull %i.ej) ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 13
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.fa = icmp ugt i8 %i.ez, 11
  br i1 %i.fa, label %bb.n, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !32

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 60), i32 noundef 276, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43)
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = atomicrmw sub ptr %i.fb, i32 2 acq_rel, align 4
  %.not.i.i54 = icmp eq i32 %i.fc, 2
  br i1 %.not.i.i54, label %bb.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !32

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit

default.unreachable:                              ; preds = %bb.k
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE1EE8FinalizeEPS4_NS4_8OpResultE.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j
  %.0 = phi ptr [ %i.ei, %bb.j ], [ %i.ej, %bb.l ], [ %i.ex, %bb.m ], [ %.sroa.016.0, %bb.k ], [ %.sroa.016.0, %bb.o ], [ %.sroa.016.0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree5MergeILNS2_8EdgeTypeE0EEEPS2_S5_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"struct.absl::lts_20260526::cord_internal::(anonymous namespace)::StackOperations", align 8 ; 7 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9     ; 2 uses
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9     ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.01416.i = phi ptr [ %0, %.lr.ph.i ], [ %i.u, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.m = load atomic i32, ptr %i.l acquire, align 4
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %.critedge.loopexit.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  store ptr %.01416.i, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i, i64 14
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.b, !llvm.loop !21

.critedge.thread.i:                               ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %i.x = icmp eq i32 %i.w, 2
  %i.y = zext i1 %i.x to i32
  %i.z = add nuw nsw i32 %i.i, %i.y               ; 2 uses
  store i32 %i.z, ptr %2, align 8, !tbaa !23
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.critedge.loopexit.i:                             ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.014.lcssa.i = phi ptr [ %0, %bb.a ], [ %.01416.i, %.critedge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.aa, %.critedge.loopexit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 8
  %i.ac = load atomic i32, ptr %i.ab acquire, align 4
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = zext i1 %i.ad to i32
  %i.af = add nuw nsw i32 %.0.lcssa.i, %i.ae      ; 3 uses
  store i32 %i.af, ptr %2, align 8, !tbaa !23
  %i.ag = icmp slt i32 %.0.lcssa.i, %i.i
  br i1 %i.ag, label %.lr.ph24.i, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit

.lr.ph24.i:                                       ; preds = %.critedge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = zext i32 %.0.lcssa.i to i64
  %sext = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph24.i
  %indvars.iv27.i = phi i64 [ %i.ai, %.lr.ph24.i ], [ %indvars.iv.next28.i, %bb.d ] ; 2 uses
  %.11522.i = phi ptr [ %.014.lcssa.i, %.lr.ph24.i ], [ %i.ap, %bb.d ] ; 3 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv27.i
  store ptr %.11522.i, ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %.11522.i, i64 14
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.11522.i, i64 16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aq = icmp slt i64 %indvars.iv.next28.i, %sext
  br i1 %i.aq, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, !llvm.loop !27

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit: ; preds = %bb.d, %.critedge.thread.i, %.critedge.i
  %.val = phi i32 [ %i.af, %.critedge.i ], [ %i.z, %.critedge.thread.i ], [ %i.af, %bb.d ]
  %.115.lcssa.i = phi ptr [ %.014.lcssa.i, %.critedge.i ], [ %i.u, %.critedge.thread.i ], [ %i.ap, %bb.d ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 15 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 14 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9   ; 3 uses
  %i.az = zext i8 %i.ay to i64                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !9   ; 3 uses
  %i.bc = zext i8 %i.bb to i64                    ; 3 uses
  %i.bd = add nuw nsw i64 %i.at, %i.az
  %i.be = add nuw nsw i64 %i.aw, %i.bc
  %i.bf = sub nsw i64 %i.bd, %i.be
  %i.bg = icmp ult i64 %i.bf, 7
  br i1 %i.bg, label %bb.e, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit
  %i.bh = icmp slt i32 %i.i, %.val
  br i1 %i.bh, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i64, ptr %.115.lcssa.i, align 8, !tbaa !10
  %i.bj = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 2, ptr %i.bk, align 4, !tbaa !28
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.bl, ptr noundef nonnull align 4 dereferenceable(52) %i.bm, i64 52, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.115.lcssa.i, i64 16 ; 2 uses
  %i.bo = load i8, ptr %i.au, align 2, !tbaa !9   ; 2 uses
  %i.bp = load i8, ptr %i.ar, align 1, !tbaa !9   ; 2 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  %.not10.i.i = icmp eq i8 %i.bo, %i.bp
  br i1 %.not10.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bs = zext i8 %i.bo to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bs
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.bt, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bu = load ptr, ptr %.011.i.i, align 8, !tbaa !19, !nonnull !30, !noundef !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = atomicrmw add ptr %i.bv, i32 2 monotonic, align 4 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, %i.br
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, label %.lr.ph.i.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i8, ptr %i.ba, align 2, !tbaa !9   ; 2 uses
  %.pre65 = load i8, ptr %i.ax, align 1, !tbaa !9 ; 2 uses
  %.pre66 = zext i8 %.pre to i64
  %.pre67 = zext i8 %.pre65 to i64
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit, %bb.e, %bb.f
  %.pre-phi68 = phi i64 [ %.pre67, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.az, %bb.e ], [ %i.az, %bb.f ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre66, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.bc, %bb.e ], [ %i.bc, %bb.f ] ; 3 uses
  %i.by = phi i8 [ %.pre65, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.ay, %bb.e ], [ %i.ay, %bb.f ]
  %i.bz = phi i8 [ %.pre, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %i.bb, %bb.e ], [ %i.bb, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.bj, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ %.115.lcssa.i, %bb.e ], [ %i.bj, %bb.f ] ; 10 uses
  %.sroa.3.0.i = phi i32 [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit.loopexit ], [ 0, %bb.e ], [ 1, %bb.f ] ; 3 uses
  %.sroa.0.0.i78 = ptrtoaddr ptr %.sroa.0.0.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.pre-phi ; 5 uses
  %i.cc = sub nsw i64 %.pre-phi68, %.pre-phi      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 15 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9   ; 2 uses
  %i.cf = zext i8 %i.ce to i64
  %i.cg = sub nsw i64 6, %i.cf                    ; 2 uses
  %.not.i.i46 = icmp eq i8 %i.ce, 6
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 14 ; 2 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !9 ; 2 uses
  br i1 %.not.i.i46, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree8AlignEndEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.ch = zext i8 %.pre.i to i64
  %i.ci = add nsw i64 %i.cg, %i.ch                ; 3 uses
  %i.cj = trunc i64 %i.ci to i8                   ; 2 uses
  store i8 6, ptr %i.cd, align 1, !tbaa !9
  %.not1415.i.i = icmp ugt i64 %i.ci, 5
  br i1 %.not1415.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree8AlignEndEv.exit.i, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i47
  %.016.i.i = phi i64 [ 5, %.lr.ph.i.i47 ], [ %.0.i.i, %bb.h ] ; 3 uses
  %i.cl = sub i64 %.016.i.i, %i.cg
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.016.i.i
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !19
  %.0.i.i = add nsw i64 %.016.i.i, -1             ; 2 uses
  %.not14.i.i = icmp ult i64 %.0.i.i, %i.ci
  br i1 %.not14.i.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree8AlignEndEv.exit.i, label %bb.h, !llvm.loop !31

_ZN4absl12lts_2026052613cord_internal12CordRepBtree8AlignEndEv.exit.i: ; preds = %bb.h, %bb.g, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit
  %i.cp = phi i8 [ %.pre.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree10ToOpResultEb.exit ], [ %i.cj, %bb.g ], [ %i.cj, %bb.h ]
  %i.cq = zext i8 %i.cp to i64                    ; 2 uses
  %i.cr = sub nsw i64 %i.cq, %i.cc                ; 5 uses
  %i.cs = trunc i64 %i.cr to i8
  store i8 %i.cs, ptr %.phi.trans.insert.i, align 1, !tbaa !9
  %.idx.i = shl nuw nsw i64 %i.cc, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i
  %.not12.i = icmp eq i8 %i.by, %i.bz
  br i1 %.not12.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree8AlignEndEv.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %3 = shl nuw nsw i64 %.pre-phi68, 3
  %i.cv = add nsw i64 %3, -8
  %4 = shl nuw nsw i64 %.pre-phi, 3
  %5 = sub nsw i64 %i.cv, %4                      ; 2 uses
  %6 = lshr exact i64 %5, 3
  %i.cw = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %5, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48
  %i.cx = shl nuw nsw i64 %i.cq, 3
  %i.cy = add i64 %i.cx, %.sroa.0.0.i78
  %i.cz = shl nuw nsw i64 %.pre-phi68, 3
  %i.da = add i64 %i.cz, %i.a
  %i.db = sub i64 %i.da, %i.cy
  %diff.check = icmp ugt i64 %i.db, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, 4611686018427387900     ; 4 uses
  %i.dc = add nsw i64 %i.cr, %n.vec
  %i.dd = shl i64 %n.vec, 3
  %i.de = getelementptr i8, ptr %i.cb, i64 %i.dd
  %i.df = getelementptr [8 x i8], ptr %i.cu, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !19
  %wide.load79 = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !19
  %i.di = getelementptr [8 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x ptr> %wide.load, ptr %i.di, align 8, !tbaa !19
  store <2 x ptr> %wide.load79, ptr %i.dj, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i48, %middle.block
  %.014.i.ph = phi i64 [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i48 ], [ %i.dc, %middle.block ]
  %.0913.i.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i48 ], [ %i.de, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014.i = phi i64 [ %i.dm, %scalar.ph ], [ %.014.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0913.i = phi ptr [ %i.do, %scalar.ph ], [ %.0913.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dl = load ptr, ptr %.0913.i, align 8, !tbaa !19
  %i.dm = add nsw i64 %.014.i, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.014.i
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %.0913.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.do, %i.ct
  br i1 %.not.i, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit, label %scalar.ph, !llvm.loop !119

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit: ; preds = %scalar.ph, %middle.block, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree8AlignEndEv.exit.i
  %i.dp = load i64, ptr %1, align 8, !tbaa !10
  %i.dq = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !10
  %i.dr = add i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %.sroa.0.0.i, align 8, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dt = load atomic i32, ptr %i.ds acquire, align 8
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %bb.i

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #20
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE0EEEvNS0_4SpanIKPNS1_7CordRepEEE.exit
  %i.dv = load i8, ptr %i.ba, align 2, !tbaa !9   ; 2 uses
  %i.dw = load i8, ptr %i.ax, align 1, !tbaa !9   ; 2 uses
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dx
  %.not58 = icmp eq i8 %i.dv, %i.dw
  br i1 %.not58, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.dz = zext i8 %i.dv to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dz
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %i.eb = atomicrmw sub ptr %i.ds, i32 2 acq_rel, align 4
  %.not.i51 = icmp eq i32 %i.eb, 2
  br i1 %.not.i51, label %bb.j, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !32

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04159 = phi ptr [ %i.ef, %.lr.ph ], [ %i.ea, %.lr.ph.preheader ] ; 2 uses
  %i.ec = load ptr, ptr %.04159, align 8, !tbaa !19, !nonnull !30, !noundef !30
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = atomicrmw add ptr %i.ed, i32 2 monotonic, align 4 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.04159, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ef, %i.dy
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.j, %._crit_edge, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit
  %.sroa.016.0 = phi ptr [ %.sroa.0.0.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ %1, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ], [ %.sroa.0.0.i, %._crit_edge ], [ %.sroa.0.0.i, %bb.j ] ; 7 uses
  %.sroa.8.0 = phi i32 [ %.sroa.3.0.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ 2, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS4_i.exit ], [ %.sroa.3.0.i, %._crit_edge ], [ %.sroa.3.0.i, %bb.j ] ; 2 uses
  %.not43 = icmp eq i8 %i.d, %i.g
  br i1 %.not43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  %i.eg = call fastcc noundef ptr @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS4_S8_imNS4_8OpResultE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %0, i32 noundef %i.i, i64 noundef %i.b, ptr nonnull %.sroa.016.0, i32 %.sroa.8.0)
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  switch i32 %.sroa.8.0, label %default.unreachable [
    i32 2, label %bb.m
    i32 1, label %bb.p
    i32 0, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.eh = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 10 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 2, ptr %i.ei, align 4, !tbaa !28
  %i.ej = load i64, ptr %.sroa.016.0, align 8, !tbaa !10
  %i.ek = load i64, ptr %0, align 8, !tbaa !10
  %i.el = add i64 %i.ek, %i.ej
  store i64 %i.el, ptr %i.eh, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 13
  %i.en = load i8, ptr %i.em, align 1, !tbaa !9
  %i.eo = add i8 %i.en, 1                         ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i8 3, ptr %i.ep, align 4, !tbaa !29
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 13
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 14
  store i8 0, ptr %i.er, align 2, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 15
  store i8 2, ptr %i.es, align 1, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %.sroa.016.0, ptr %i.et, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store ptr %0, ptr %i.eu, align 8, !tbaa !19
  %i.ev = icmp ugt i8 %i.eo, 11
  br i1 %i.ev, label %bb.n, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !32

bb.n:                                             ; preds = %bb.m
  %i.ew = tail call noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef nonnull %i.eh) ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 13
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %i.ez = icmp ugt i8 %i.ey, 11
  br i1 %i.ez, label %bb.o, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !32

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 60), i32 noundef 276, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43)
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = atomicrmw sub ptr %i.fa, i32 2 acq_rel, align 4
  %.not.i.i52 = icmp eq i32 %i.fb, 2
  br i1 %.not.i.i52, label %bb.q, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit, !prof !32

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %0)
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit

default.unreachable:                              ; preds = %bb.l
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115StackOperationsILNS1_12CordRepBtree8EdgeTypeE0EE8FinalizeEPS4_NS4_8OpResultE.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k
  %.0 = phi ptr [ %i.eg, %bb.k ], [ %i.eh, %bb.m ], [ %i.ew, %bb.n ], [ %.sroa.016.0, %bb.l ], [ %.sroa.016.0, %bb.p ], [ %.sroa.016.0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052613cord_internal12CordRepBtree6IsFlatEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.h = load i8, ptr %i.g, align 2, !tbaa !9
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
end_hunk_0
