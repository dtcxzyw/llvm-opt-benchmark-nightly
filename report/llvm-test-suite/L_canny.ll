begin_hunk_0_@DGaussianMask:bb.a
.lr.ph:                                           ; preds = %bb.c
  %i.n = trunc i32 %.neg to i16
  %i.o = fmul double %i.b, 2.000000e+00
  %i.p = fmul double %i.o, %i.b                   ; 3 uses
  %i.q = fmul double %i.b, 0x40040D931FF62705     ; 3 uses
  %i.r = fdiv double -1.000000e+00, %i.q
  %i.s = fptrunc double %i.r to float
end_hunk_0
begin_hunk_1_@DGaussianMask:bb.a
  %i.u = fdiv double 1.000000e+00, %i.q
  %i.v = fptrunc double %i.u to float
  %i.w = fpext float %i.v to double
  %4 = insertelement <2 x double> poison, double %i.p, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
end_hunk_1
begin_hunk_2_@DGaussianMask:bb.a
bb.f:                                             ; preds = %bb.d
  %i.aj = add nsw i32 %i.y, -1
  %i.ak = icmp eq i32 %i.aa, %i.aj
  %i.al = sitofp i16 %.04249 to double            ; 2 uses
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@DGaussianMask:bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %6 = insertelement <2 x double> poison, double %i.al, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fadd <2 x double> %7, <double 5.000000e-01, double -5.000000e-01> ; 2 uses
  %9 = fneg <2 x double> %8
  %10 = fmul <2 x double> %8, %9
  %11 = fdiv <2 x double> %10, %5                 ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = tail call double @exp(double noundef %12) #8, !tbaa !4
  %14 = extractelement <2 x double> %11, i64 1
  %i.as = tail call double @exp(double noundef %14) #8, !tbaa !4
  %i.at = fsub double %13, %i.as
  %i.au = fdiv double %i.at, %i.q
  br label %bb.i

end_hunk_3
