inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv46.i48 = phi i64 [ %indvars.iv.next47.i51, %scalar.ph169 ], [ %indvars.iv46.i48.ph, %scalar.ph169.preheader ] ; 4 uses
  %gep.i49 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i46, i64 %indvars.iv46.i48
  %2 = load double, ptr %gep.i49, align 8, !tbaa !8
  %i.fy = load double, ptr %i.ez, align 8, !tbaa !8
  %gep39.i50 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i47, i64 %indvars.iv46.i48
  %3 = load double, ptr %gep39.i50, align 8, !tbaa !8
  %i.fz = load double, ptr %i.fa, align 8, !tbaa !8
  %4 = insertelement <2 x double> poison, double %2, i64 0
  %5 = insertelement <2 x double> %4, double %3, i64 1
  %6 = fmul <2 x double> %5, splat (double 1.500000e+00)
  %7 = insertelement <2 x double> poison, double %i.fy, i64 0
  %8 = insertelement <2 x double> %7, double %i.fz, i64 1
  %9 = fmul <2 x double> %6, %8                   ; 2 uses
  %shift = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %9, %shift
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv46.i48 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !8
  %i.gc = fadd double %i.gb, %10
  store double %i.gc, ptr %i.ga, align 8, !tbaa !8
  %indvars.iv.next47.i51 = add nuw nsw i64 %indvars.iv46.i48, 1 ; 2 uses
  %exitcond50.not.i52 = icmp eq i64 %indvars.iv.next47.i51, %indvars.iv55.i39
end_hunk_0
