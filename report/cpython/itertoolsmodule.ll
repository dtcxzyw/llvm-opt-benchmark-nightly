inline.NumInlined: 375
inline.NumDeleted: 64
begin_hunk_0_@combinations_next:bb.a
  br i1 %i.cb, label %bb.p, label %.critedge.i, !llvm.loop !118

.critedge.i:                                      ; preds = %.lr.ph
  %indvar.lcssa = phi i64 [ %indvar, %.lr.ph ]    ; 3 uses
  %.1.i29.lcssa = phi i64 [ %.1.i29, %.lr.ph ]    ; 2 uses
  %.1.in.i28.lcssa = phi i64 [ %i.by, %.lr.ph ]   ; 3 uses
end_hunk_0
begin_hunk_1_@combinations_next:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol.preheader

.lr.ph.i.prol.preheader:                          ; preds = %.lr.ph.i.preheader
  %i.ck = zext i2 %lsr.iv58 to i64
  br label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.prol.preheader, %.lr.ph.i.prol
end_hunk_1
begin_hunk_2_@combinations_next:bb.a
  br i1 %exitcond.not.i.3, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !121

bb.q:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph90.i
  %lsr.iv74 = phi i64 [ %lsr.iv.next75, %Py_DECREF.exit.i ], [ %lsr.iv72, %.lr.ph90.i ] ; 3 uses
  %i.dd = shl i64 %lsr.iv74, 3
  %scevgep79.a = getelementptr i8, ptr %scevgep78, i64 %i.dd
  %i.de = load i64, ptr %scevgep79.a, align 8, !tbaa !102
end_hunk_2
begin_hunk_3_@cwr_next:bb.a
  br i1 %i.bu, label %bb.q, label %.critedge.i, !llvm.loop !137

.critedge.i:                                      ; preds = %.lr.ph
  %.1.i22.lcssa = phi i64 [ %.1.i22, %.lr.ph ]
  %.lcssa30 = phi i64 [ %i.bt, %.lr.ph ]
  %i.bv = add i64 %.lcssa30, 1                    ; 2 uses
end_hunk_3
begin_hunk_4_@cwr_next:bb.a
  br label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph.i
  %lsr.iv33 = phi i64 [ %lsr.iv.next34, %Py_DECREF.exit.i ], [ %lsr.iv, %.lr.ph.i ] ; 3 uses
  %i.cd = shl i64 %lsr.iv33, 3
  %scevgep38 = getelementptr i8, ptr %scevgep37.a, i64 %i.cd
  store i64 %i.bv, ptr %scevgep38, align 8, !tbaa !102
end_hunk_4
begin_hunk_5_@permutations_next:bb.a
  br i1 %i.cx, label %bb.q, label %Py_DECREF.exit105.i.loopexit, !llvm.loop !188

bb.s:                                             ; preds = %bb.q
  %.1116.i.lcssa = phi i64 [ %.1116.i, %bb.q ]    ; 2 uses
  %.lcssa47 = phi i64 [ %i.cj, %bb.q ]
  %.lcssa45 = phi i64 [ %i.cm, %bb.q ]
end_hunk_5
begin_hunk_6_@permutations_next:bb.a
  br label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit.i, %.lr.ph120.i
  %lsr.iv64 = phi i64 [ %lsr.iv.next65, %Py_DECREF.exit.i ], [ %lsr.iv62, %.lr.ph120.i ] ; 3 uses
  %i.dg = shl i64 %lsr.iv64, 3
  %scevgep69 = getelementptr i8, ptr %scevgep68.a, i64 %i.dg
  %i.dh = load i64, ptr %scevgep69, align 8, !tbaa !102
end_hunk_6
