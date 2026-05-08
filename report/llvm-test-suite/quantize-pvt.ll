inline.NumInlined: 2
begin_hunk_0_@quantize_xrpow:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.062, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %.05861, i64 16
  %i.k = load <4 x double>, ptr %.062, align 8, !tbaa !19
  %i.l = fmul <4 x double> %i.g, %i.k             ; 5 uses
  %3 = extractelement <4 x double> %i.l, i64 0
  %4 = fptosi double %3 to i32
  %5 = extractelement <4 x double> %i.l, i64 1
  %6 = fptosi double %5 to i32
  %7 = extractelement <4 x double> %i.l, i64 2
  %8 = fptosi double %7 to i32
  %9 = extractelement <4 x double> %i.l, i64 3
  %10 = fptosi double %9 to i32
  %i.m = sext i32 %4 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !19
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds [8 x i8], ptr @adj43, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !19
  %i.p = sext i32 %8 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !19
  %i.s = sext i32 %10 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %i.v = insertelement <4 x double> poison, double %i.o, i64 0
  %i.w = insertelement <4 x double> %i.v, double %13, i64 1
  %i.x = insertelement <4 x double> %i.w, double %i.r, i64 2
  %i.y = insertelement <4 x double> %i.x, double %i.u, i64 3
  %i.z = fadd <4 x double> %i.l, %i.y
end_hunk_0
begin_hunk_1_@quantize_xrpow:bb.a
  store <4 x i32> %i.aa, ptr %.05861, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.05861, i64 32
  %i.ac = load <4 x double>, ptr %i.h, align 8, !tbaa !19
  %i.ad = fmul <4 x double> %i.g, %i.ac           ; 5 uses
  %14 = extractelement <4 x double> %i.ad, i64 0
  %15 = fptosi double %14 to i32
  %16 = extractelement <4 x double> %i.ad, i64 1
  %17 = fptosi double %16 to i32
  %18 = extractelement <4 x double> %i.ad, i64 2
  %19 = fptosi double %18 to i32
  %20 = extractelement <4 x double> %i.ad, i64 3
  %21 = fptosi double %20 to i32
  %i.ae = sext i32 %15 to i64
  %i.af = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds [8 x i8], ptr @adj43, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !19
  %i.ah = sext i32 %19 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !19
  %i.ak = sext i32 %21 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !19
  %i.an = insertelement <4 x double> poison, double %i.ag, i64 0
  %i.ao = insertelement <4 x double> %i.an, double %24, i64 1
  %i.ap = insertelement <4 x double> %i.ao, double %i.aj, i64 2
  %i.aq = insertelement <4 x double> %i.ap, double %i.am, i64 3
  %i.ar = fadd <4 x double> %i.ad, %i.aq
end_hunk_1
