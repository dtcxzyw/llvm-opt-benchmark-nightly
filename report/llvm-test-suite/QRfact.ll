inline.NumInlined: 3
begin_hunk_0_@QRiterate:bb.a
  br label %Givens.exit

Givens.exit:                                      ; preds = %.lr.ph166, %bb.g, %bb.h
  %.0148 = phi double [ %i.lt, %bb.h ], [ %i.lp, %bb.g ], [ 1.000000e+00, %.lr.ph166 ] ; 5 uses
  %.0147 = phi double [ %i.lu, %bb.h ], [ %i.lo, %bb.g ], [ 0.000000e+00, %.lr.ph166 ] ; 5 uses
  %i.lv = trunc i64 %indvars.iv181 to i32
  %i.lw = add i32 %i.lv, -1
  %i.lx = tail call i32 @llvm.smax.i32(i32 %i.lw, i32 %.1129.lcssa.ph190)
end_hunk_0
begin_hunk_1_@QRiterate:bb.a

.lr.ph162:                                        ; preds = %scalar.ph, %middle.block
  %i.mp = sext i32 %i.ma to i64
  %2 = insertelement <2 x double> poison, double %.0147, i64 0
  %3 = insertelement <2 x double> %2, double %.0148, i64 1 ; 2 uses
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_1
begin_hunk_2_@QRiterate:bb.a
  %i.mz = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv179
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !10
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %indvars.iv181 ; 3 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !8
  %i.nd = getelementptr i8, ptr %i.nb, i64 8
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !8 ; 2 uses
  %i.nf = fneg double %i.ne
  %4 = insertelement <2 x double> poison, double %i.nf, i64 0
  %5 = insertelement <2 x double> %4, double %i.ne, i64 1
  %6 = fmul <2 x double> %3, %5
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %8 = insertelement <2 x double> poison, double %i.nc, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %9, <2 x double> %7)
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %11, ptr %i.nb, align 8, !tbaa !8
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1
  %.not137.not = icmp slt i64 %indvars.iv179, %i.mp
  br i1 %.not137.not, label %bb.i, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.i, %Givens.exit
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 4 uses
  %12 = insertelement <2 x double> poison, double %.0147, i64 0
  %13 = insertelement <2 x double> %12, double %.0148, i64 1 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge
end_hunk_2
begin_hunk_3_@QRiterate:bb.a
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !10 ; 2 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %indvars.iv181 ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !8
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %indvars.iv.next182
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !8 ; 2 uses
  %i.nm = fneg double %i.nl
  %14 = insertelement <2 x double> poison, double %i.nm, i64 0
  %15 = insertelement <2 x double> %14, double %i.nl, i64 1
  %16 = fmul <2 x double> %13, %15
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %18 = insertelement <2 x double> poison, double %i.nj, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %19, <2 x double> %17)
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %21, ptr %i.ni, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 51
  br i1 %exitcond.not.i, label %ApplyRGivens.exit, label %bb.j, !llvm.loop !13
end_hunk_3
