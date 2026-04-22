inline.NumInlined: 11
begin_hunk_0_@main:bb.a
  %indvar.conv = uitofp nneg i32 %.05772.int to double ; 6 uses
  %i.b = add nsw i32 %.05772.int, -1
  %i.c = sitofp i32 %i.b to double
  %2 = fmul double %indvar.conv, %indvar.conv
  %3 = fmul double %2, %indvar.conv               ; 2 uses
  %4 = tail call double @pow(double noundef 0x3FE5555555555555, double noundef %i.c) #5, !tbaa !4
  %5 = tail call double @sqrt(double noundef %indvar.conv) #5, !tbaa !4
  %6 = tail call double @sin(double noundef %indvar.conv) #5, !tbaa !4 ; 2 uses
  %i.d = tail call double @cos(double noundef %indvar.conv) #5, !tbaa !4 ; 2 uses
  %7 = fmul double %3, %6
  %8 = fmul double %6, %7
  %9 = fmul double %3, %i.d
  %10 = fmul double %i.d, %9
  %11 = fdiv double 1.000000e+00, %10
  %12 = insertelement <2 x double> poison, double %5, i64 0
  %13 = insertelement <2 x double> %12, double %8, i64 1
  %i.e = fdiv <2 x double> splat (double 1.000000e+00), %13
  %i.f = insertelement <4 x double> poison, double %4, i64 0
  %14 = shufflevector <2 x double> %i.e, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x double> %i.f, <4 x double> %14, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %16 = insertelement <4 x double> %15, double %11, i64 3
  %i.g = fadd <4 x double> %i.a, %16              ; 5 uses
  %.int = add nuw nsw i32 %.05772.int, 1          ; 2 uses
  %exitcond = icmp eq i32 %.int, 2500001
end_hunk_0
