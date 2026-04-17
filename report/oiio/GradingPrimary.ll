inline.NumInlined: 186
inline.NumDeleted: 59
begin_hunk_0_@_ZN16OpenColorIO_v2_523GradingPrimaryPreRender6updateENS_12GradingStyleENS_18TransformDirectionERKNS_14GradingPrimaryE:bb.a
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 248
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.kp = load double, ptr %4, align 8, !tbaa !12 ; 3 uses
  %6 = load double, ptr %i.kn, align 8, !tbaa !11
  %7 = load <4 x double>, ptr %i.jt, align 8, !tbaa !33 ; 4 uses
  %i.kq = load double, ptr %i.kk, align 8, !tbaa !12 ; 2 uses
  %8 = load double, ptr %i.km, align 8, !tbaa !10
  %9 = load double, ptr %i.ko, align 8, !tbaa !18 ; 3 uses
  %10 = load double, ptr %5, align 8, !tbaa !19   ; 3 uses
  %11 = fdiv double %9, %i.kg
  %12 = fadd double %i.kq, %11
  %13 = extractelement <4 x double> %7, i64 0
  %14 = fadd double %13, %12
  %15 = fsub double %14, %10                      ; 2 uses
  %16 = fsub double %9, %10                       ; 2 uses
  %17 = fcmp oeq double %15, 0.000000e+00
  %18 = select i1 %17, double 1.000000e+00, double %15
  %19 = fdiv double %16, %18
  %i.kr = fadd double %i.kp, %6
  %20 = load <2 x double>, ptr %i.js, align 8, !tbaa !33 ; 2 uses
  %21 = insertelement <2 x double> %20, double %i.kp, i64 1
  %22 = insertelement <2 x double> %20, double %i.kp, i64 0
  %23 = fadd <2 x double> %21, %22
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = insertelement <4 x double> %24, double %i.kr, i64 2
  %26 = insertelement <4 x double> %25, double %19, i64 3
  %27 = shufflevector <4 x double> %7, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.ks = fadd <4 x double> %26, %27
  %i.kt = insertelement <4 x double> %7, double -0.000000e+00, i64 3
  %i.ku = fadd <4 x double> %i.ks, %i.kt
  %i.kv = fptrunc <4 x double> %i.ku to <4 x float>
  store <4 x float> %i.kv, ptr %i.kl, align 8, !tbaa !31
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kx = insertelement <2 x double> poison, double %9, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = fdiv <2 x double> %i.ky, %i.ki
  %i.la = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fadd <2 x double> %i.lb, %i.kz
  %28 = shufflevector <4 x double> %7, <4 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.ld = insertelement <2 x double> %28, double %8, i64 0
  %i.le = fadd <2 x double> %i.ld, %i.lc
  %i.lf = insertelement <2 x double> poison, double %10, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fsub <2 x double> %i.le, %i.lg          ; 2 uses
  %i.li = fcmp oeq <2 x double> %i.lh, zeroinitializer
  %i.lj = select <2 x i1> %i.li, <2 x double> splat (double 1.000000e+00), <2 x double> %i.lh
  %i.lk = insertelement <2 x double> poison, double %16, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = fdiv <2 x double> %i.ll, %i.lj
  %i.ln = fptrunc <2 x double> %i.lm to <2 x float>
end_hunk_0
