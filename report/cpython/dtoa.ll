inline.NumInlined: 94
inline.NumDeleted: 14
begin_hunk_0_@_Py_dg_strtod:bb.a

.preheader735.17:                                 ; preds = %.preheader735.16
  %i.jx = load i8, ptr %.1430, align 1, !tbaa !11
  %.not545.17 = icmp ne i8 %i.jx, 48
  %spec.select1277.a = zext i1 %.not545.17 to i32
  br label %.preheader734

end_hunk_0
begin_hunk_1_@_Py_dg_strtod:bb.a
  br label %.loopexit733

.preheader734:                                    ; preds = %.preheader735.17, %.preheader735.10, %.preheader735.11, %.preheader735.12, %.preheader735.13, %.preheader735.14, %.preheader735.15, %.preheader735.16
  %.3457.lcssa.a = phi i32 [ 6, %.preheader735.12 ], [ 8, %.preheader735.10 ], [ 2, %.preheader735.16 ], [ 7, %.preheader735.11 ], [ %spec.select1277.a, %.preheader735.17 ], [ 3, %.preheader735.15 ], [ 5, %.preheader735.13 ], [ 4, %.preheader735.14 ] ; 7 uses
  %i.ka = sub nuw nsw i32 %.0454.lcssa11081118, %.3457.lcssa.a
  %i.kb = add i32 %i.ka, %i.ev                    ; 3 uses
  %spec.select569 = tail call i32 @llvm.smin.i32(i32 %spec.select56811111116, i32 %.3457.lcssa.a) ; 8 uses
end_hunk_1
begin_hunk_2_@_Py_dg_strtod:bb.a

.lr.ph896.preheader:                              ; preds = %.preheader
  %i.kl = zext nneg i32 %.5459.lcssa to i64       ; 4 uses
  %wide.trip.count1022 = zext nneg i32 %.3457.lcssa.a to i64 ; 3 uses
  %i.km = sub nsw i64 %wide.trip.count1022, %i.kl
  %xtraiter1505 = and i64 %i.km, 3                ; 2 uses
  %lcmp.mod1506.not = icmp eq i64 %xtraiter1505, 0
  br i1 %lcmp.mod1506.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol
end_hunk_2
begin_hunk_3_@_Py_dg_strtod:bb.a
  %.lcssa1485.unr = phi i32 [ poison, %.lr.ph896.preheader ], [ %i.ks, %.lr.ph896.prol ]
  %indvars.iv1019.unr = phi i64 [ %i.kl, %.lr.ph896.preheader ], [ %indvars.iv.next1020.prol, %.lr.ph896.prol ]
  %.3419895.unr = phi i32 [ %.2418.lcssa, %.lr.ph896.preheader ], [ %i.ks, %.lr.ph896.prol ]
  %i.kt = sub nsw i64 %i.kl, %wide.trip.count1022
  %i.ku = icmp ugt i64 %i.kt, -4
  br i1 %i.ku, label %._crit_edge.thread.i, label %.lr.ph896

end_hunk_3
begin_hunk_4_@_Py_dg_strtod:bb.a
  %i.mu = sext i8 %i.mt to i32
  %i.mv = add i32 %i.mr, -48
  %i.mw = add i32 %i.mv, %i.mu                    ; 2 uses
  %exitcond1023.not.3 = icmp eq i64 %indvars.iv.next1020.3, %wide.trip.count1022
  br i1 %exitcond1023.not.3, label %._crit_edge.thread.i, label %.lr.ph896, !llvm.loop !37

.loopexit733:                                     ; preds = %.thread1122, %bb.bj
end_hunk_4
