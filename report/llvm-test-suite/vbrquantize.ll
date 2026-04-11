inline.NumInlined: 4
begin_hunk_0_@compute_scalefacs_long:bb.a
  br i1 %i.bc, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.be = load double, ptr %i.bd, align 16, !tbaa !8 ; 2 uses
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %i.bg = sdiv i32 %i.bf, %i.e
end_hunk_0
begin_hunk_1_@compute_scalefacs_long:bb.a
  store double %i.z, ptr %i.u, align 8, !tbaa !8
  store double %i.ag, ptr %i.ab, align 16, !tbaa !8
  store double %i.an, ptr %i.ai, align 8, !tbaa !8
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 76), align 4, !tbaa !4
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 68), align 4, !tbaa !4
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 64), align 16, !tbaa !4
  %5 = sdiv i32 %i.by, %i.e
  %6 = sdiv i32 %i.bz, %i.e
  %7 = sdiv i32 %3, %i.e
  %8 = sdiv i32 %4, %i.e
  %9 = insertelement <4 x i32> poison, i32 %8, i64 0
  %10 = insertelement <4 x i32> %9, i32 %7, i64 1
  %11 = insertelement <4 x i32> %10, i32 %6, i64 2
  %12 = insertelement <4 x i32> %11, i32 %5, i64 3
  %13 = sitofp <4 x i32> %12 to <4 x double>
  %14 = insertelement <4 x double> poison, double %i.aq, i64 0
  %15 = insertelement <4 x double> %14, double %i.ax, i64 1
  %16 = insertelement <4 x double> %15, double %i.be, i64 2
  %17 = insertelement <4 x double> %16, double %i.bl, i64 3
  %18 = fadd <4 x double> %17, %13
  store <4 x double> %18, ptr %i.ap, align 16, !tbaa !8
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 80), align 16, !tbaa !4
  %i.cb = sdiv i32 %i.ca, %i.e
  %i.cc = sitofp i32 %i.cb to double
end_hunk_1
