inline.NumInlined: 3
begin_hunk_0_@QRiterate:bb.a
  br label %Givens.exit

Givens.exit:                                      ; preds = %.lr.ph166, %bb.g, %bb.h
  %.0148 = phi double [ %i.lt, %bb.h ], [ %i.lp, %bb.g ], [ 1.000000e+00, %.lr.ph166 ] ; 7 uses
  %.0147 = phi double [ %i.lu, %bb.h ], [ %i.lo, %bb.g ], [ 0.000000e+00, %.lr.ph166 ] ; 7 uses
  %i.lv = trunc i64 %indvars.iv181 to i32
  %i.lw = add i32 %i.lv, -1
  %i.lx = tail call i32 @llvm.smax.i32(i32 %i.lw, i32 %.1129.lcssa.ph190)
end_hunk_0
begin_hunk_1_@QRiterate:bb.a

.lr.ph162:                                        ; preds = %scalar.ph, %middle.block
  %i.mp = sext i32 %i.ma to i64
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_1
begin_hunk_2_@QRiterate:bb.a
  %i.mz = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv179
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !10
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %indvars.iv181 ; 3 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !8 ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nb, i64 8      ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !8 ; 2 uses
  %i.nf = fneg double %i.ne
  %2 = fmul double %.0147, %i.nf
  %3 = tail call double @llvm.fmuladd.f64(double %.0148, double %i.nc, double %2)
  store double %3, ptr %i.nb, align 8, !tbaa !8
  %4 = fmul double %.0148, %i.ne
  %5 = tail call double @llvm.fmuladd.f64(double %.0147, double %i.nc, double %4)
  store double %5, ptr %i.nd, align 8, !tbaa !8
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1
  %.not137.not = icmp slt i64 %indvars.iv179, %i.mp
  br i1 %.not137.not, label %bb.i, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.i, %Givens.exit
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge
end_hunk_2
begin_hunk_3_@QRiterate:bb.a
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !10 ; 2 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %indvars.iv181 ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !8 ; 2 uses
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %indvars.iv.next182 ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !8 ; 2 uses
  %i.nm = fneg double %i.nl
  %6 = fmul double %.0147, %i.nm
  %7 = tail call double @llvm.fmuladd.f64(double %.0148, double %i.nj, double %6)
  store double %7, ptr %i.ni, align 8, !tbaa !8
  %8 = fmul double %.0148, %i.nl
  %9 = tail call double @llvm.fmuladd.f64(double %.0147, double %i.nj, double %8)
  store double %9, ptr %i.nk, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 51
  br i1 %exitcond.not.i, label %ApplyRGivens.exit, label %bb.j, !llvm.loop !13
end_hunk_3
