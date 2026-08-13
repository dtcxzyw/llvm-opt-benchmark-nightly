inline.NumInlined: 302
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN20btBatchedConstraints5setupEP20btAlignedObjectArrayI18btSolverConstraintERKS0_I12btSolverBodyENS_14BatchingMethodEiiPS0_IcE:bb.a
  %i.sa = load i8, ptr %i.rz, align 8, !tbaa !133, !range !46, !noundef !59
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.bm, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ry)
          to label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i.i.i unwind label %bb.bw

_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl, %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.sc, align 8, !tbaa !133
  store ptr null, ptr %i.rx, align 8, !tbaa !27
  store i32 0, ptr %i.ru, align 8, !tbaa !132
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i.i.i, %bb.bk, %_ZN20btAlignedObjectArrayIiE7reserveEi.exit.i.i
  store i32 0, ptr %i.rr, align 4, !tbaa !17
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 13 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !17
  %i.sf = icmp slt i32 %i.se, 0
  br i1 %i.sf, label %bb.bo, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !132
  %i.si = icmp slt i32 %i.sh, 0
  br i1 %i.si, label %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i77.i.i, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i

_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i77.i.i: ; preds = %bb.bo
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !27 ; 2 uses
  %.not.i5.i.i78.i.i = icmp eq ptr %i.sk, null
  br i1 %.not.i5.i.i78.i.i, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i79.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i77.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.sm = load i8, ptr %i.sl, align 8, !tbaa !133, !range !46, !noundef !59
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.bq, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i79.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.sk)
          to label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i79.i.i unwind label %bb.bw

_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i79.i.i: ; preds = %bb.bq, %bb.bp, %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i77.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.so, align 8, !tbaa !133
  store ptr null, ptr %i.sj, align 8, !tbaa !27
  store i32 0, ptr %i.sg, align 8, !tbaa !132
  br label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i

_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i: ; preds = %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i79.i.i, %bb.bo, %bb.bn
  store i32 0, ptr %i.sd, align 4, !tbaa !17
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %.lr.ph.preheader.i217.i

bb.br:                                            ; preds = %._crit_edge.thread.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !21 ; 2 uses
  %i.sx = icmp sgt i32 %i.e, %i.sw
  br i1 %i.sx, label %bb.bs, label %bb.cs

bb.bs:                                            ; preds = %bb.br
  %i.sy = load i32, ptr %i.qf, align 8, !tbaa !16
  %i.sz = icmp slt i32 %i.sy, %i.e
  br i1 %i.sz, label %bb.bt, label %bb.cs

bb.bt:                                            ; preds = %bb.bs
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ta = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.l, i32 noundef 16)
          to label %.noexc93.i.i unwind label %bb.cy

.noexc93.i.i:                                     ; preds = %bb.bu
  %.pre.i.i.i = load i32, ptr %i.sv, align 4, !tbaa !21
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i: ; preds = %.noexc93.i.i, %bb.bt
  %i.tb = phi i32 [ %.pre.i.i.i, %.noexc93.i.i ], [ %i.sw, %bb.bt ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ta, %.noexc93.i.i ], [ null, %bb.bt ] ; 8 uses
  %i.tc = icmp sgt i32 %i.tb, 0
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !15 ; 9 uses
  br i1 %i.tc, label %.lr.ph.i.i.i88.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i

.lr.ph.i.i.i88.i.i:                               ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %i.tf = ptrtoaddr ptr %i.te to i64
  %.0.i.i.i.i.i284 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %wide.trip.count.i.i.i89.i.i = zext nneg i32 %i.tb to i64 ; 5 uses
  %min.iters.check287 = icmp ult i32 %i.tb, 8
  %i.tg = sub i64 %i.tf, %.0.i.i.i.i.i284
  %diff.check285 = icmp ugt i64 %i.tg, -32
  %or.cond360 = select i1 %min.iters.check287, i1 true, i1 %diff.check285
  br i1 %or.cond360, label %scalar.ph286.preheader, label %vector.ph288

vector.ph288:                                     ; preds = %.lr.ph.i.i.i88.i.i
  %n.vec289 = and i64 %wide.trip.count.i.i.i89.i.i, 2147483640 ; 3 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next294, %vector.body290 ] ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index291 ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %index291 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %wide.load292 = load <4 x i32>, ptr %i.ti, align 4, !tbaa !26
  %wide.load293 = load <4 x i32>, ptr %i.tj, align 4, !tbaa !26
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store <4 x i32> %wide.load292, ptr %i.th, align 4, !tbaa !26
  store <4 x i32> %wide.load293, ptr %i.tk, align 4, !tbaa !26
  %index.next294 = add nuw i64 %index291, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.tl, label %middle.block295, label %vector.body290, !llvm.loop !134

middle.block295:                                  ; preds = %vector.body290
  %cmp.n296 = icmp eq i64 %n.vec289, %wide.trip.count.i.i.i89.i.i
  br i1 %cmp.n296, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %.lr.ph.i.i.i88.i.i, %middle.block295
  %indvars.iv.i.i.i90.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i88.i.i ], [ %n.vec289, %middle.block295 ] ; 3 uses
  %xtraiter416 = and i64 %wide.trip.count.i.i.i89.i.i, 3 ; 2 uses
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %scalar.ph286.prol.loopexit, label %scalar.ph286.prol

scalar.ph286.prol:                                ; preds = %scalar.ph286.preheader, %scalar.ph286.prol
  %indvars.iv.i.i.i90.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i91.i.i.prol, %scalar.ph286.prol ], [ %indvars.iv.i.i.i90.i.i.ph, %scalar.ph286.preheader ] ; 3 uses
  %prol.iter418 = phi i64 [ %prol.iter418.next, %scalar.ph286.prol ], [ 0, %scalar.ph286.preheader ]
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i90.i.i.prol
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.i.i.i90.i.i.prol
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !26
  store i32 %i.to, ptr %i.tm, align 4, !tbaa !26
  %indvars.iv.next.i.i.i91.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i90.i.i.prol, 1 ; 2 uses
  %prol.iter418.next = add i64 %prol.iter418, 1   ; 2 uses
  %prol.iter418.cmp.not = icmp eq i64 %prol.iter418.next, %xtraiter416
  br i1 %prol.iter418.cmp.not, label %scalar.ph286.prol.loopexit, label %scalar.ph286.prol, !llvm.loop !135

scalar.ph286.prol.loopexit:                       ; preds = %scalar.ph286.prol, %scalar.ph286.preheader
  %indvars.iv.i.i.i90.i.i.unr = phi i64 [ %indvars.iv.i.i.i90.i.i.ph, %scalar.ph286.preheader ], [ %indvars.iv.next.i.i.i91.i.i.prol, %scalar.ph286.prol ]
  %i.tp = sub nsw i64 %indvars.iv.i.i.i90.i.i.ph, %wide.trip.count.i.i.i89.i.i
  %i.tq = icmp ugt i64 %i.tp, -4
  br i1 %i.tq, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph286

scalar.ph286:                                     ; preds = %scalar.ph286.prol.loopexit, %scalar.ph286
  %indvars.iv.i.i.i90.i.i = phi i64 [ %indvars.iv.next.i.i.i91.i.i.3, %scalar.ph286 ], [ %indvars.iv.i.i.i90.i.i.unr, %scalar.ph286.prol.loopexit ] ; 6 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.i90.i.i
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.i.i.i90.i.i
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !26
  store i32 %i.tt, ptr %i.tr, align 4, !tbaa !26
  %indvars.iv.next.i.i.i91.i.i = add nuw nsw i64 %indvars.iv.i.i.i90.i.i, 1 ; 2 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i91.i.i
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i91.i.i
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !26
  store i32 %i.tw, ptr %i.tu, align 4, !tbaa !26
  %indvars.iv.next.i.i.i91.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i90.i.i, 2 ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i91.i.i.1
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i91.i.i.1
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !26
  store i32 %i.tz, ptr %i.tx, align 4, !tbaa !26
  %indvars.iv.next.i.i.i91.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i90.i.i, 3 ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.i91.i.i.2
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %indvars.iv.next.i.i.i91.i.i.2
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !26
  store i32 %i.uc, ptr %i.ua, align 4, !tbaa !26
  %indvars.iv.next.i.i.i91.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i90.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i92.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i91.i.i.3, %wide.trip.count.i.i.i89.i.i
  br i1 %exitcond.not.i.i.i92.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph286, !llvm.loop !136

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i87.i.i = icmp eq ptr %i.te, null
  br i1 %.not.i5.i.i87.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i: ; preds = %scalar.ph286.prol.loopexit, %scalar.ph286, %middle.block295, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ue = load i8, ptr %i.ud, align 8, !tbaa !9, !range !46, !noundef !59
  %i.uf = trunc nuw i8 %i.ue to i1
  br i1 %i.uf, label %bb.bv, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i

bb.bv:                                            ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.te)
          to label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i unwind label %bb.cy

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i.i.i: ; preds = %bb.bv, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ug, align 8, !tbaa !9
  store ptr %.0.i.i.i.i.i, ptr %i.td, align 8, !tbaa !15
  store i32 %i.e, ptr %i.qf, align 8, !tbaa !16
  br label %bb.cs

bb.bw:                                            ; preds = %.noexc149.i.i, %_ZN20btAlignedObjectArrayIcE18resizeNoInitializeEi.exit.i.i.i, %bb.dh, %bb.dd, %bb.bq, %bb.bm, %bb.bj, %bb.bi
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.lr.ph.preheader.i217.i:                          ; preds = %._crit_edge.thread.i.i, %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i
  %indvars.iv173.i.i = phi i64 [ %i.uj, %._crit_edge.thread.i.i ], [ 0, %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i ]
  %indvars.iv.i210.i = phi i32 [ %indvars.iv.next.i211.i, %._crit_edge.thread.i.i ], [ 0, %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i ] ; 2 uses
  %.066158.i.i = phi i32 [ %i.uq, %._crit_edge.thread.i.i ], [ 0, %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE18resizeNoInitializeEi.exit86.i.i ]
  %i.ui = load i32, ptr %i.rr, align 4, !tbaa !17 ; 2 uses
  %i.uj = add nuw nsw i64 %indvars.iv173.i.i, 1   ; 3 uses
  %i.uk = mul nuw nsw i64 %i.uj, %i.jj
  %i.ul = sext i32 %indvars.iv.i210.i to i64
  br label %.lr.ph.i218.i

._crit_edge.i.i:                                  ; preds = %bb.ch
  %.pre.i219.i = load i32, ptr %i.rr, align 4, !tbaa !17 ; 2 uses
  %i.um = icmp sgt i32 %.pre.i219.i, %i.ui
  br i1 %i.um, label %bb.ci, label %._crit_edge.thread.i.i

.lr.ph.i218.i:                                    ; preds = %bb.ch, %.lr.ph.preheader.i217.i
  %indvars.iv170.i.i = phi i64 [ %i.ul, %.lr.ph.preheader.i217.i ], [ %indvars.iv.next171.i.i, %bb.ch ] ; 3 uses
  %.167156.i.i = phi i32 [ %.066158.i.i, %.lr.ph.preheader.i217.i ], [ %i.uq, %bb.ch ] ; 3 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %indvars.iv170.i.i
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %indvars.iv170.i.i
  store i32 %.167156.i.i, ptr %i.uo, align 4, !tbaa !26
  %i.up = load i32, ptr %i.un, align 4, !tbaa !111 ; 2 uses
  %i.uq = add nsw i32 %i.up, %.167156.i.i         ; 3 uses
  %i.ur = icmp sgt i32 %i.up, 0
  br i1 %i.ur, label %bb.bx, label %bb.ch

bb.bx:                                            ; preds = %.lr.ph.i218.i
  %i.us = load i32, ptr %i.rr, align 4, !tbaa !17 ; 7 uses
  %i.ut = load i32, ptr %i.sp, align 8, !tbaa !132
  %i.uu = icmp eq i32 %i.us, %i.ut
  br i1 %i.uu, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx
  %.not.i.i95.i.i = icmp eq i32 %i.us, 0
  %i.uv = shl nsw i32 %i.us, 1
  %i.uw = select i1 %.not.i.i95.i.i, i32 1, i32 %i.uv ; 4 uses
  %i.ux = icmp slt i32 %i.us, %i.uw
  br i1 %i.ux, label %bb.bz, label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %.not.i.i.i96.i.i = icmp eq i32 %i.uw, 0
  br i1 %.not.i.i.i96.i.i, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.uy = sext i32 %i.uw to i64
  %i.uz = shl nsw i64 %i.uy, 3
  %i.va = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.uz, i32 noundef 16)
          to label %.noexc107.i.i unwind label %bb.cg

.noexc107.i.i:                                    ; preds = %bb.ca
  %.pre.i97.i.i = load i32, ptr %i.rr, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i.i.i

_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i.i.i: ; preds = %.noexc107.i.i, %bb.bz
  %i.vb = phi i32 [ %.pre.i97.i.i, %.noexc107.i.i ], [ %i.us, %bb.bz ] ; 3 uses
  %.0.i.i.i98.i.i = phi ptr [ %i.va, %.noexc107.i.i ], [ null, %bb.bz ] ; 6 uses
  %i.vc = icmp sgt i32 %i.vb, 0
  br i1 %i.vc, label %.lr.ph.i.i.i102.i.i, label %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i

.lr.ph.i.i.i102.i.i:                              ; preds = %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i.i.i
  %wide.trip.count.i.i.i103.i.i = zext nneg i32 %i.vb to i64 ; 2 uses
  %xtraiter403 = and i64 %wide.trip.count.i.i.i103.i.i, 3 ; 3 uses
  %i.vd = icmp ult i32 %i.vb, 4
  br i1 %i.vd, label %.epil.preheader402, label %.lr.ph.i.i.i102.i.i.new

.lr.ph.i.i.i102.i.i.new:                          ; preds = %.lr.ph.i.i.i102.i.i
  %unroll_iter407 = and i64 %wide.trip.count.i.i.i103.i.i, 2147483644
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.i.i102.i.i.new
  %indvars.iv.i.i.i104.i.i = phi i64 [ 0, %.lr.ph.i.i.i102.i.i.new ], [ %indvars.iv.next.i.i.i105.i.i.3, %bb.cb ] ; 6 uses
  %niter408 = phi i64 [ 0, %.lr.ph.i.i.i102.i.i.new ], [ %niter408.next.3, %bb.cb ]
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i98.i.i, i64 %indvars.iv.i.i.i104.i.i
  %i.vf = load ptr, ptr %i.sq, align 8, !tbaa !27
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %indvars.iv.i.i.i104.i.i
  %i.vh = load i64, ptr %i.vg, align 4
  store i64 %i.vh, ptr %i.ve, align 4
  %indvars.iv.next.i.i.i105.i.i = or disjoint i64 %indvars.iv.i.i.i104.i.i, 1 ; 2 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i98.i.i, i64 %indvars.iv.next.i.i.i105.i.i
  %i.vj = load ptr, ptr %i.sq, align 8, !tbaa !27
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.next.i.i.i105.i.i
  %i.vl = load i64, ptr %i.vk, align 4
  store i64 %i.vl, ptr %i.vi, align 4
  %indvars.iv.next.i.i.i105.i.i.1 = or disjoint i64 %indvars.iv.i.i.i104.i.i, 2 ; 2 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i98.i.i, i64 %indvars.iv.next.i.i.i105.i.i.1
  %i.vn = load ptr, ptr %i.sq, align 8, !tbaa !27
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %indvars.iv.next.i.i.i105.i.i.1
  %i.vp = load i64, ptr %i.vo, align 4
  store i64 %i.vp, ptr %i.vm, align 4
  %indvars.iv.next.i.i.i105.i.i.2 = or disjoint i64 %indvars.iv.i.i.i104.i.i, 3 ; 2 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i98.i.i, i64 %indvars.iv.next.i.i.i105.i.i.2
  %i.vr = load ptr, ptr %i.sq, align 8, !tbaa !27
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.next.i.i.i105.i.i.2
  %i.vt = load i64, ptr %i.vs, align 4
  store i64 %i.vt, ptr %i.vq, align 4
  %indvars.iv.next.i.i.i105.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i104.i.i, 4 ; 2 uses
  %niter408.next.3 = add i64 %niter408, 4         ; 2 uses
  %niter408.ncmp.3 = icmp eq i64 %niter408.next.3, %unroll_iter407
  br i1 %niter408.ncmp.3, label %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i.loopexit.unr-lcssa, label %bb.cb, !llvm.loop !137

_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i.loopexit.unr-lcssa: ; preds = %bb.cb
  %lcmp.mod405.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod405.not, label %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i, label %.epil.preheader402

.epil.preheader402:                               ; preds = %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i102.i.i
  %indvars.iv.i.i.i104.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i102.i.i ], [ %indvars.iv.next.i.i.i105.i.i.3, %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i.loopexit.unr-lcssa ]
  %lcmp.mod406 = icmp ne i64 %xtraiter403, 0
  call void @llvm.assume(i1 %lcmp.mod406)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader402
  %indvars.iv.i.i.i104.i.i.epil = phi i64 [ %indvars.iv.i.i.i104.i.i.epil.init, %.epil.preheader402 ], [ %indvars.iv.next.i.i.i105.i.i.epil, %bb.cc ] ; 3 uses
  %epil.iter404 = phi i64 [ 0, %.epil.preheader402 ], [ %epil.iter404.next, %bb.cc ]
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i98.i.i, i64 %indvars.iv.i.i.i104.i.i.epil
  %i.vv = load ptr, ptr %i.sq, align 8, !tbaa !27
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv.i.i.i104.i.i.epil
  %i.vx = load i64, ptr %i.vw, align 4
  store i64 %i.vx, ptr %i.vu, align 4
  %indvars.iv.next.i.i.i105.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i104.i.i.epil, 1
  %epil.iter404.next = add i64 %epil.iter404, 1   ; 2 uses
  %epil.iter404.cmp.not = icmp eq i64 %epil.iter404.next, %xtraiter403
  br i1 %epil.iter404.cmp.not, label %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i, label %bb.cc, !llvm.loop !138

_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i: ; preds = %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i.loopexit.unr-lcssa, %bb.cc, %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i.i.i
  %i.vy = load ptr, ptr %i.sq, align 8, !tbaa !27 ; 2 uses
  %.not.i5.i.i100.i.i = icmp eq ptr %i.vy, null
  br i1 %.not.i5.i.i100.i.i, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i101.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i
  %i.vz = load i8, ptr %i.sr, align 8, !tbaa !133, !range !46, !noundef !59
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.ce, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i101.i.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.vy)
          to label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i101.i.i unwind label %bb.cg

_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i101.i.i: ; preds = %bb.ce, %bb.cd, %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i99.i.i
  store i8 1, ptr %i.sr, align 8, !tbaa !133
  store ptr %.0.i.i.i98.i.i, ptr %i.sq, align 8, !tbaa !27
  store i32 %i.uw, ptr %i.sp, align 8, !tbaa !132
  %.pre2.i.i.i = load i32, ptr %i.rr, align 4, !tbaa !17
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i101.i.i, %bb.by, %bb.bx
  %i.wb = phi i32 [ %.pre2.i.i.i, %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE10deallocateEv.exit.i.i101.i.i ], [ %i.us, %bb.by ], [ %i.us, %bb.bx ]
  %i.wc = load ptr, ptr %i.sq, align 8, !tbaa !27
  %i.wd = sext i32 %i.wb to i64
  %i.we = getelementptr inbounds [8 x i8], ptr %i.wc, i64 %i.wd
  %.sroa.5152.0.insert.ext.i.i = zext i32 %i.uq to i64
  %.sroa.5152.0.insert.shift.i.i = shl nuw i64 %.sroa.5152.0.insert.ext.i.i, 32
  %.sroa.0151.0.insert.ext.i.i = zext i32 %.167156.i.i to i64
  %.sroa.0151.0.insert.insert.i.i = or disjoint i64 %.sroa.5152.0.insert.shift.i.i, %.sroa.0151.0.insert.ext.i.i
  store i64 %.sroa.0151.0.insert.insert.i.i, ptr %i.we, align 4
  %i.wf = load i32, ptr %i.rr, align 4, !tbaa !17
  %i.wg = add nsw i32 %i.wf, 1
  store i32 %i.wg, ptr %i.rr, align 4, !tbaa !17
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce, %bb.ca
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ch:                                            ; preds = %bb.cf, %.lr.ph.i218.i
  %indvars.iv.next171.i.i = add nsw i64 %indvars.iv170.i.i, 1 ; 2 uses
  %i.wi = icmp slt i64 %indvars.iv.next171.i.i, %i.uk
  br i1 %i.wi, label %.lr.ph.i218.i, label %._crit_edge.i.i, !llvm.loop !139

bb.ci:                                            ; preds = %._crit_edge.i.i
  %i.wj = load i32, ptr %i.sd, align 4, !tbaa !17 ; 7 uses
  %i.wk = load i32, ptr %i.ss, align 8, !tbaa !132
  %i.wl = icmp eq i32 %i.wj, %i.wk
  br i1 %i.wl, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %.not.i.i109.i.i = icmp eq i32 %i.wj, 0
  %i.wm = shl nsw i32 %i.wj, 1
  %i.wn = select i1 %.not.i.i109.i.i, i32 1, i32 %i.wm ; 4 uses
  %i.wo = icmp slt i32 %i.wj, %i.wn
  br i1 %i.wo, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %.not.i.i.i110.i.i = icmp eq i32 %i.wn, 0
  br i1 %.not.i.i.i110.i.i, label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i112.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.wp = sext i32 %i.wn to i64
  %i.wq = shl nsw i64 %i.wp, 3
  %i.wr = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.wq, i32 noundef 16)
          to label %.noexc123.i.i unwind label %bb.cr

.noexc123.i.i:                                    ; preds = %bb.cl
  %.pre.i111.i.i = load i32, ptr %i.sd, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i112.i.i

_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i112.i.i: ; preds = %.noexc123.i.i, %bb.ck
  %i.ws = phi i32 [ %.pre.i111.i.i, %.noexc123.i.i ], [ %i.wj, %bb.ck ] ; 3 uses
  %.0.i.i.i113.i.i = phi ptr [ %i.wr, %.noexc123.i.i ], [ null, %bb.ck ] ; 6 uses
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %.lr.ph.i.i.i118.i.i, label %_ZNK20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE4copyEiiPS1_.exit.i.i114.i.i

.lr.ph.i.i.i118.i.i:                              ; preds = %_ZN20btAlignedObjectArrayIN20btBatchedConstraints5RangeEE8allocateEi.exit.i.i112.i.i
  %wide.trip.count.i.i.i119.i.i = zext nneg i32 %i.ws to i64 ; 2 uses
end_hunk_0
