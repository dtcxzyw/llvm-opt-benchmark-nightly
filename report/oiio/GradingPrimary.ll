inline.NumInlined: 186
inline.NumDeleted: 59
begin_hunk_0_@_ZN16OpenColorIO_v2_523GradingPrimaryPreRender6updateENS_12GradingStyleENS_18TransformDirectionERKNS_14GradingPrimaryE:bb.a
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !18 ; 3 uses
  %4 = fdiv double %i.kp, %i.kg
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.kq = load double, ptr %5, align 8, !tbaa !19 ; 3 uses
  %6 = fsub double %i.kp, %i.kq                   ; 2 uses
  %7 = load <2 x double>, ptr %i.js, align 8, !tbaa !33
  %8 = load <2 x double>, ptr %i.kn, align 8, !tbaa !33 ; 2 uses
  %9 = shufflevector <2 x double> %8, <2 x double> <double poison, double -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %10 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %11 = insertelement <4 x double> %10, double -0.000000e+00, i64 3
  %12 = shufflevector <2 x double> %7, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x double> %12, <4 x double> %11, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %14 = fadd <4 x double> %9, %13
  %15 = load <4 x double>, ptr %i.jt, align 8, !tbaa !33 ; 3 uses
  %16 = load double, ptr %i.kk, align 8, !tbaa !12 ; 2 uses
  %17 = load double, ptr %i.km, align 8, !tbaa !10
  %i.kr = fadd double %16, %4
  %18 = extractelement <4 x double> %15, i64 0
  %19 = fadd double %18, %i.kr
  %20 = fsub double %19, %i.kq                    ; 2 uses
  %21 = fcmp oeq double %20, 0.000000e+00
  %22 = select i1 %21, double 1.000000e+00, double %20
  %23 = fdiv double %6, %22
  %24 = shufflevector <4 x double> %15, <4 x double> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %25 = insertelement <2 x double> %24, double %23, i64 1
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ks = fadd <4 x double> %26, %14
  %i.kt = insertelement <4 x double> %15, double -0.000000e+00, i64 3
  %i.ku = fadd <4 x double> %i.ks, %i.kt
  %i.kv = fptrunc <4 x double> %i.ku to <4 x float>
  store <4 x float> %i.kv, ptr %i.kl, align 8, !tbaa !31
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kx = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = fdiv <2 x double> %i.ky, %i.ki
  %i.la = insertelement <2 x double> poison, double %16, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fadd <2 x double> %i.lb, %i.kz
  %i.ld = insertelement <2 x double> %24, double %17, i64 0
  %i.le = fadd <2 x double> %i.ld, %i.lc
  %i.lf = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fsub <2 x double> %i.le, %i.lg          ; 2 uses
  %i.li = fcmp oeq <2 x double> %i.lh, zeroinitializer
  %i.lj = select <2 x i1> %i.li, <2 x double> splat (double 1.000000e+00), <2 x double> %i.lh
  %i.lk = insertelement <2 x double> poison, double %6, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = fdiv <2 x double> %i.ll, %i.lj
  %i.ln = fptrunc <2 x double> %i.lm to <2 x float>
end_hunk_0
