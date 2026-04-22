inline.NumInlined: 11
begin_hunk_0_@main:bb.a
  %indvar.conv = uitofp nneg i32 %.05772.int to double ; 6 uses
  %i.b = add nsw i32 %.05772.int, -1
  %i.c = sitofp i32 %i.b to double
  %2 = tail call double @pow(double noundef 0x3FE5555555555555, double noundef %i.c) #5, !tbaa !4
  %3 = tail call double @sqrt(double noundef %indvar.conv) #5, !tbaa !4
  %4 = fdiv double 1.000000e+00, %3
  %5 = fmul double %indvar.conv, %indvar.conv
  %6 = fmul double %5, %indvar.conv
  %i.d = tail call double @sin(double noundef %indvar.conv) #5, !tbaa !4
  %7 = tail call double @cos(double noundef %indvar.conv) #5, !tbaa !4
  %8 = insertelement <2 x double> poison, double %6, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x double> poison, double %i.d, i64 0
  %11 = insertelement <2 x double> %10, double %7, i64 1 ; 2 uses
  %12 = fmul <2 x double> %9, %11
  %13 = fmul <2 x double> %11, %12
  %i.e = fdiv <2 x double> splat (double 1.000000e+00), %13
  %i.f = insertelement <4 x double> poison, double %2, i64 0
  %14 = insertelement <4 x double> %i.f, double %4, i64 1
  %15 = shufflevector <2 x double> %i.e, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x double> %14, <4 x double> %15, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.g = fadd <4 x double> %i.a, %16              ; 5 uses
  %.int = add nuw nsw i32 %.05772.int, 1          ; 2 uses
  %exitcond = icmp eq i32 %.int, 2500001
end_hunk_0
