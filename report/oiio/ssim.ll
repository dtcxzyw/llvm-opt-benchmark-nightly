inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@SSIMGetClipped_C:bb.a
  %i.c = add nsw i32 %5, 3
  %i.d = add nsw i32 %7, -1
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.d) ; 2 uses
  %i.f = tail call i32 @llvm.smax.i32(i32 %4, i32 3) ; 3 uses
  %i.g = add i32 %4, 3
  %i.h = add i32 %6, -1
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %.not81 = icmp sgt i32 %i.b, %i.e
  br i1 %.not81, label %._crit_edge91, label %.preheader.lr.ph

end_hunk_0
begin_hunk_1_@SSIMGetClipped_C:bb.a
  %i.p = mul nsw i32 %i.b, %3
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.s = zext nneg i32 %i.f to i64                ; 3 uses
  %i.t = add nsw i64 %i.s, -3                     ; 5 uses
  %i.u = add nuw i32 %i.i, 1
  %i.v = zext nneg i32 %i.a to i64
  %i.w = add nsw i64 %i.v, -3
  %i.x = zext nneg i32 %i.e to i64
  %wide.trip.count = zext i32 %i.u to i64         ; 3 uses
  %8 = add nuw nsw i64 %wide.trip.count, 2
  %9 = sub nsw i64 %8, %i.s                       ; 2 uses
  %i.y = sub i32 %i.f, %4                         ; 2 uses
  %10 = add nuw nsw i64 %wide.trip.count, 3
  %11 = sub nsw i64 %10, %i.s                     ; 3 uses
  %invariant.op170 = sub i32 3, %5
  %min.iters.check = icmp ult i64 %11, 4
  %12 = trunc i64 %9 to i32
  %13 = add i32 %i.y, %12
  %i.z = icmp slt i32 %13, %i.y
  %14 = icmp ugt i64 %9, 4294967295
  %or.cond = or i1 %i.z, %14
  %n.vec = and i64 %11, -4                        ; 3 uses
  %i.aa = add nsw i64 %i.t, %n.vec
  %invariant.op = sub i32 3, %4
  %cmp.n = icmp eq i64 %11, %n.vec
end_hunk_1
begin_hunk_2_@SSIMGetClipped_C:bb.a
  %indvars.iv112 = phi i64 [ %i.w, %.preheader.preheader ], [ %indvars.iv.next113, %._crit_edge ] ; 3 uses
  %.090 = phi ptr [ %i.o, %.preheader.preheader ], [ %i.ch, %._crit_edge ] ; 3 uses
  %.05189 = phi ptr [ %i.r, %.preheader.preheader ], [ %i.ci, %._crit_edge ] ; 3 uses
  %.sroa.18.087 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.15.086 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa125, %._crit_edge ] ; 3 uses
  %.sroa.12.085 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa126, %._crit_edge ] ; 3 uses
  %.sroa.9.084 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa127, %._crit_edge ] ; 3 uses
  %.sroa.6.083 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa128, %._crit_edge ] ; 3 uses
  %.sroa.0.082 = phi i32 [ 0, %.preheader.preheader ], [ %.lcssa129, %._crit_edge ] ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv112 to i32
  %.reass.reass.reass.reass = add i32 %i.ab, %invariant.op170
  %i.ac = sext i32 %.reass.reass.reass.reass to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr @kWeight, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.18.087, i64 0
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.15.086, i64 0
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.12.085, i64 0
end_hunk_2
begin_hunk_3_@SSIMGetClipped_C:bb.a
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.at) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.scevcheck ], [ %i.t, %.preheader ], [ %i.aa, %middle.block ]
  %.sroa.18.174.ph = phi i32 [ %.sroa.18.087, %vector.scevcheck ], [ %.sroa.18.087, %.preheader ], [ %i.bf, %middle.block ]
  %.sroa.15.173.ph = phi i32 [ %.sroa.15.086, %vector.scevcheck ], [ %.sroa.15.086, %.preheader ], [ %i.bg, %middle.block ]
  %.sroa.12.172.ph = phi i32 [ %.sroa.12.085, %vector.scevcheck ], [ %.sroa.12.085, %.preheader ], [ %i.bh, %middle.block ]
  %.sroa.9.171.ph = phi i32 [ %.sroa.9.084, %vector.scevcheck ], [ %.sroa.9.084, %.preheader ], [ %i.bi, %middle.block ]
  %.sroa.6.170.ph = phi i32 [ %.sroa.6.083, %vector.scevcheck ], [ %.sroa.6.083, %.preheader ], [ %i.bj, %middle.block ]
  %.sroa.0.169.ph = phi i32 [ %.sroa.0.082, %vector.scevcheck ], [ %.sroa.0.082, %.preheader ], [ %i.bk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_3
begin_hunk_4_@SSIMGetClipped_C:bb.a
  %i.cf = mul i32 %i.bz, %i.bv
  %i.cg = add i32 %i.cf, %.sroa.18.174            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
end_hunk_4
