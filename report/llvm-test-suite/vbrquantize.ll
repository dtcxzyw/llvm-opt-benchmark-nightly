inline.NumInlined: 4
begin_hunk_0_@compute_scalefacs_long:bb.a
  br i1 %i.bc, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.be = load double, ptr %i.bd, align 16, !tbaa !8 ; 2 uses
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %i.bg = sdiv i32 %i.bf, %i.e
end_hunk_0
begin_hunk_1_@compute_scalefacs_long:bb.a
  store double %i.z, ptr %i.u, align 8, !tbaa !8
  store double %i.ag, ptr %i.ab, align 16, !tbaa !8
  store double %i.an, ptr %i.ai, align 8, !tbaa !8
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 68), align 4, !tbaa !4
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 64), align 16, !tbaa !4
  %3 = sdiv i32 %i.by, %i.e
  %4 = sdiv i32 %i.bz, %i.e
  %5 = insertelement <2 x i32> poison, i32 %4, i64 0
  %6 = insertelement <2 x i32> %5, i32 %3, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x double>
  %8 = insertelement <2 x double> poison, double %i.aq, i64 0
  %9 = insertelement <2 x double> %8, double %i.ax, i64 1
  %10 = fadd <2 x double> %9, %7
  store <2 x double> %10, ptr %i.ap, align 16, !tbaa !8
  %11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 76), align 4, !tbaa !4
  %12 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 72), align 8, !tbaa !4
  %13 = sdiv i32 %11, %i.e
  %14 = sdiv i32 %12, %i.e
  %15 = insertelement <2 x i32> poison, i32 %14, i64 0
  %16 = insertelement <2 x i32> %15, i32 %13, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = insertelement <2 x double> poison, double %i.be, i64 0
  %19 = insertelement <2 x double> %18, double %i.bl, i64 1
  %20 = fadd <2 x double> %19, %17
  store <2 x double> %20, ptr %i.bd, align 16, !tbaa !8
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @pretab, i64 80), align 16, !tbaa !4
  %i.cb = sdiv i32 %i.ca, %i.e
  %i.cc = sitofp i32 %i.cb to double
end_hunk_1
