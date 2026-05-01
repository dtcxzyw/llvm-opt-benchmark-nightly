begin_hunk_0_@SolveCubic:bb.a
  %i.z = fpext double %i.y to x86_fp80
  %i.aa = fdiv x86_fp80 %i.q, %i.z
  %i.ab = fptrunc x86_fp80 %i.aa to double
  %i.ac = tail call double @acos(double noundef %i.ab) #3, !tbaa !4 ; 2 uses
  %i.ad = fptrunc x86_fp80 %i.i to double         ; 3 uses
  %i.ae = tail call double @sqrt(double noundef %i.ad) #3, !tbaa !4
  %i.af = fmul double %i.ae, -2.000000e+00
end_hunk_0
begin_hunk_1_@SolveCubic:bb.a
  %i.ai = fmul double %i.af, %i.ah
  %i.aj = tail call double @sqrt(double noundef %i.ad) #3, !tbaa !4
  %i.ak = fmul double %i.aj, -2.000000e+00
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = insertelement <2 x double> poison, double %i.ac, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = fadd <2 x double> %8, <double 0x401921FB54442D18, double 0x402921FB54442D18>
  %10 = fdiv <2 x double> %9, splat (double 3.000000e+00) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %i.al = tail call double @cos(double noundef %11) #3, !tbaa !4
  %i.am = fmul double %i.ak, %i.al
  %i.an = fpext double %i.am to x86_fp80
  %i.ao = fsub x86_fp80 %i.an, %i.w
  %i.ap = fptrunc x86_fp80 %i.ao to double
  store double %i.ap, ptr %6, align 8, !tbaa !8
  %i.aq = tail call double @sqrt(double noundef %i.ad) #3, !tbaa !4
  %i.ar = fmul double %i.aq, -2.000000e+00
  %12 = extractelement <2 x double> %10, i64 1
  %i.as = tail call double @cos(double noundef %12) #3, !tbaa !4
  %i.at = fmul double %i.ar, %i.as
  %i.au = fpext double %i.at to x86_fp80
  %i.av = fsub x86_fp80 %i.au, %i.w
end_hunk_1
