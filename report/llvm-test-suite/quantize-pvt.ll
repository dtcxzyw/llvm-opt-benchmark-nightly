inline.NumInlined: 2
begin_hunk_0_@quantize_xrpow:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.062, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %.05861, i64 16
  %i.k = load <4 x double>, ptr %.062, align 8, !tbaa !19
  %i.l = fmul <4 x double> %i.g, %i.k             ; 3 uses
  %3 = shufflevector <4 x double> %i.l, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %4 = fptosi <2 x double> %3 to <2 x i32>        ; 2 uses
  %5 = extractelement <2 x i32> %4, i64 0
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8 x i8], ptr @adj43, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !19
  %9 = extractelement <2 x i32> %4, i64 1
  %i.m = sext i32 %9 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !19
  %10 = shufflevector <4 x double> %i.l, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %11 = fptosi <2 x double> %10 to <2 x i32>      ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 0
  %i.p = sext i32 %12 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !19
  %13 = extractelement <2 x i32> %11, i64 1
  %i.s = sext i32 %13 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %i.v = insertelement <4 x double> poison, double %8, i64 0
  %i.w = insertelement <4 x double> %i.v, double %i.o, i64 1
  %i.x = insertelement <4 x double> %i.w, double %i.r, i64 2
  %i.y = insertelement <4 x double> %i.x, double %i.u, i64 3
  %i.z = fadd <4 x double> %i.l, %i.y
end_hunk_0
begin_hunk_1_@quantize_xrpow:bb.a
  store <4 x i32> %i.aa, ptr %.05861, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.05861, i64 32
  %i.ac = load <4 x double>, ptr %i.h, align 8, !tbaa !19
  %i.ad = fmul <4 x double> %i.g, %i.ac           ; 3 uses
  %14 = shufflevector <4 x double> %i.ad, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %15 = fptosi <2 x double> %14 to <2 x i32>      ; 2 uses
  %16 = extractelement <2 x i32> %15, i64 0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], ptr @adj43, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !19
  %20 = extractelement <2 x i32> %15, i64 1
  %i.ae = sext i32 %20 to i64
  %i.af = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !19
  %21 = shufflevector <4 x double> %i.ad, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %22 = fptosi <2 x double> %21 to <2 x i32>      ; 2 uses
  %23 = extractelement <2 x i32> %22, i64 0
  %i.ah = sext i32 %23 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !19
  %24 = extractelement <2 x i32> %22, i64 1
  %i.ak = sext i32 %24 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !19
  %i.an = insertelement <4 x double> poison, double %19, i64 0
  %i.ao = insertelement <4 x double> %i.an, double %i.ag, i64 1
  %i.ap = insertelement <4 x double> %i.ao, double %i.aj, i64 2
  %i.aq = insertelement <4 x double> %i.ap, double %i.am, i64 3
  %i.ar = fadd <4 x double> %i.ad, %i.aq
end_hunk_1
