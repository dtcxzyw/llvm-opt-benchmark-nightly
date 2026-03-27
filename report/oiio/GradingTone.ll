begin_hunk_0
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_510IsIdentityERKNS_11GradingToneE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <4 x double>, ptr %0, align 8
  %.fr = freeze <4 x double> %i.a
  %i.b = fcmp une <4 x double> %.fr, splat (double 1.000000e+00)
  %i.c = bitcast <4 x i1> %i.b to i4
  %i.d = icmp eq i4 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread
end_hunk_0
begin_hunk_1
bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load <4 x double>, ptr %i.e, align 8
  %.fr32 = freeze <4 x double> %i.f
  %i.g = fcmp une <4 x double> %.fr32, splat (double 1.000000e+00)
  %i.h = bitcast <4 x i1> %i.g to i4
  %i.i = icmp eq i4 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread
end_hunk_1
begin_hunk_2
bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load <4 x double>, ptr %i.j, align 8
  %.fr33 = freeze <4 x double> %i.k
  %i.l = fcmp une <4 x double> %.fr33, splat (double 1.000000e+00)
  %i.m = bitcast <4 x i1> %i.l to i4
  %i.n = icmp eq i4 %i.m, 0
  br i1 %i.n, label %bb.d, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread
end_hunk_2
begin_hunk_3
bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load <4 x double>, ptr %i.o, align 8
  %.fr34 = freeze <4 x double> %i.p
  %i.q = fcmp une <4 x double> %.fr34, splat (double 1.000000e+00)
  %i.r = bitcast <4 x i1> %i.q to i4
  %i.s = icmp eq i4 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread
end_hunk_3
begin_hunk_4
bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load <4 x double>, ptr %i.t, align 8
  %.fr35 = freeze <4 x double> %i.u
  %i.v = fcmp une <4 x double> %.fr35, splat (double 1.000000e+00)
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread
end_hunk_4
