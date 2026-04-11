inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv46.i48 = phi i64 [ %indvars.iv.next47.i51, %scalar.ph169 ], [ %indvars.iv46.i48.ph, %scalar.ph169.preheader ] ; 4 uses
  %gep.i49 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i46, i64 %indvars.iv46.i48
  %i.fy = load double, ptr %gep.i49, align 8, !tbaa !8
  %2 = fmul double %i.fy, 1.500000e+00
  %i.fz = load double, ptr %i.ez, align 8, !tbaa !8
  %3 = fmul double %2, %i.fz
  %gep39.i50 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i47, i64 %indvars.iv46.i48
  %4 = load double, ptr %gep39.i50, align 8, !tbaa !8
  %5 = fmul double %4, 1.500000e+00
  %6 = load double, ptr %i.fa, align 8, !tbaa !8
  %7 = fmul double %5, %6
  %8 = fadd double %3, %7
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv46.i48 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !8
  %i.gc = fadd double %i.gb, %8
  store double %i.gc, ptr %i.ga, align 8, !tbaa !8
  %indvars.iv.next47.i51 = add nuw nsw i64 %indvars.iv46.i48, 1 ; 2 uses
  %exitcond50.not.i52 = icmp eq i64 %indvars.iv.next47.i51, %indvars.iv55.i39
end_hunk_0
