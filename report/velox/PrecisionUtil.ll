Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PrecisionUtil?download=true
inline.NumInlined: 41
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos9operation9overlayng13PrecisionUtil9safeScaleEPKNS_4geom8GeometryE:bb.a
  %i.p = tail call double @log(double noundef %i.o) #11
  %i.q = fdiv double %i.p, f0x40026BB1BBB55516
  %i.r = fadd double %i.q, 1.000000e+00
  %i.s = fptosi double %i.r to i32
  %i.t = sub nsw i32 14, %i.s
  %i.u = sitofp i32 %i.t to double
  %i.v = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.u) #11
  ret double %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4geos9operation9overlayng13PrecisionUtil9safeScaleEd(double noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call double @log(double noundef %0) #11
  %i.b = fdiv double %i.a, f0x40026BB1BBB55516
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fptosi double %i.c to i32
  %i.e = sub nsw i32 14, %i.d
  %i.f = sitofp i32 %i.e to double
  %i.g = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.f) #11
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4geos9operation9overlayng13PrecisionUtil14precisionScaleEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call double @log(double noundef %0) #11
  %i.b = fdiv double %i.a, f0x40026BB1BBB55516
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fptosi double %i.c to i32
  %i.e = sub nsw i32 %1, %i.d
  %i.f = sitofp i32 %i.e to double
  %i.g = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.f) #11
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9operation9overlayng13PrecisionUtil17maxBoundMagnitudeEPKNS_4geom8EnvelopeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !16
  %i.c = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.b) ; 2 uses
  %i.d = load <2 x double>, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.d) ; 2 uses
  %i.f = fcmp olt <2 x double> %i.c, %i.e
  %i.g = select <2 x i1> %i.f, <2 x double> %i.e, <2 x double> %i.c ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0  ; 2 uses
  %i.i = extractelement <2 x double> %i.g, i64 1  ; 2 uses
  %i.j = fcmp olt double %i.i, %i.h
  %i.k = select i1 %i.j, double %i.h, double %i.i
  ret double %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4geos9operation9overlayng13PrecisionUtil13inherentScaleEd(double noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4geos9operation9overlayng13PrecisionUtil16numberOfDecimalsEd(double noundef %0)
  %i.b = uitofp nneg i32 %i.a to double
  %i.c = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.b) #11
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 18) i32 @_ZN4geos9operation9overlayng13PrecisionUtil16numberOfDecimalsEd(double noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call double @llvm.round.f64(double %0)
  %i.b = fsub double %0, %i.a
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, 5.000000e-05
  br i1 %i.d, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = fmul double %0, 1.000000e+01             ; 3 uses
  %i.f = tail call double @llvm.round.f64(double %i.e)
  %i.g = fsub double %i.e, %i.f
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ogt double %i.h, 5.000000e-05
  br i1 %i.i, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.j = fmul double %i.e, 1.000000e+01           ; 3 uses
  %i.k = tail call double @llvm.round.f64(double %i.j)
  %i.l = fsub double %i.j, %i.k
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ogt double %i.m, 5.000000e-05
  br i1 %i.n, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.o = fmul double %i.j, 1.000000e+01           ; 3 uses
  %i.p = tail call double @llvm.round.f64(double %i.o)
  %i.q = fsub double %i.o, %i.p
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ogt double %i.r, 5.000000e-05
  br i1 %i.s, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.t = fmul double %i.o, 1.000000e+01           ; 3 uses
  %i.u = tail call double @llvm.round.f64(double %i.t)
  %i.v = fsub double %i.t, %i.u
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ogt double %i.w, 5.000000e-05
  br i1 %i.x, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.y = fmul double %i.t, 1.000000e+01           ; 3 uses
  %i.z = tail call double @llvm.round.f64(double %i.y)
  %i.aa = fsub double %i.y, %i.z
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp ogt double %i.ab, 5.000000e-05
  br i1 %i.ac, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ad = fmul double %i.y, 1.000000e+01          ; 3 uses
  %i.ae = tail call double @llvm.round.f64(double %i.ad)
  %i.af = fsub double %i.ad, %i.ae
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp ogt double %i.ag, 5.000000e-05
  br i1 %i.ah, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ai = fmul double %i.ad, 1.000000e+01         ; 3 uses
  %i.aj = tail call double @llvm.round.f64(double %i.ai)
  %i.ak = fsub double %i.ai, %i.aj
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ogt double %i.al, 5.000000e-05
  br i1 %i.am, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.an = fmul double %i.ai, 1.000000e+01         ; 3 uses
  %i.ao = tail call double @llvm.round.f64(double %i.an)
  %i.ap = fsub double %i.an, %i.ao
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp ogt double %i.aq, 5.000000e-05
  br i1 %i.ar, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.as = fmul double %i.an, 1.000000e+01         ; 3 uses
  %i.at = tail call double @llvm.round.f64(double %i.as)
  %i.au = fsub double %i.as, %i.at
  %i.av = tail call double @llvm.fabs.f64(double %i.au)
  %i.aw = fcmp ogt double %i.av, 5.000000e-05
  br i1 %i.aw, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ax = fmul double %i.as, 1.000000e+01         ; 3 uses
  %i.ay = tail call double @llvm.round.f64(double %i.ax)
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = tail call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ogt double %i.ba, 5.000000e-05
  br i1 %i.bb, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bc = fmul double %i.ax, 1.000000e+01         ; 3 uses
  %i.bd = tail call double @llvm.round.f64(double %i.bc)
  %i.be = fsub double %i.bc, %i.bd
  %i.bf = tail call double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp ogt double %i.bf, 5.000000e-05
  br i1 %i.bg, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bh = fmul double %i.bc, 1.000000e+01         ; 3 uses
  %i.bi = tail call double @llvm.round.f64(double %i.bh)
  %i.bj = fsub double %i.bh, %i.bi
  %i.bk = tail call double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ogt double %i.bk, 5.000000e-05
  br i1 %i.bl, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bm = fmul double %i.bh, 1.000000e+01         ; 3 uses
  %i.bn = tail call double @llvm.round.f64(double %i.bm)
  %i.bo = fsub double %i.bm, %i.bn
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ogt double %i.bp, 5.000000e-05
  br i1 %i.bq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.br = fmul double %i.bm, 1.000000e+01         ; 3 uses
  %i.bs = tail call double @llvm.round.f64(double %i.br)
  %i.bt = fsub double %i.br, %i.bs
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ogt double %i.bu, 5.000000e-05
  br i1 %i.bv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bw = fmul double %i.br, 1.000000e+01         ; 3 uses
  %i.bx = tail call double @llvm.round.f64(double %i.bw)
  %i.by = fsub double %i.bw, %i.bx
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ogt double %i.bz, 5.000000e-05
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = fmul double %i.bw, 1.000000e+01         ; 2 uses
  %i.cc = tail call double @llvm.round.f64(double %i.cb)
  %i.cd = fsub double %i.cb, %i.cc
  %i.ce = tail call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp ogt double %i.ce, 5.000000e-05
  %spec.select = select i1 %i.cf, i32 17, i32 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.09 = phi i32 [ 11, %bb.l ], [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.q ], [ 2, %bb.c ], [ 9, %bb.j ], [ 3, %bb.d ], [ 15, %bb.p ], [ 4, %bb.e ], [ 12, %bb.m ], [ 5, %bb.f ], [ 14, %bb.o ], [ 6, %bb.g ], [ 10, %bb.k ], [ 7, %bb.h ], [ 13, %bb.n ], [ 8, %bb.i ]
  ret i32 %.09
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom16CoordinateFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter9filter_roEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !21
  %i.b = tail call noundef i32 @_ZN4geos9operation9overlayng13PrecisionUtil16numberOfDecimalsEd(double noundef %i.a)
  %i.c = uitofp nneg i32 %i.b to double
  %i.d = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.c) #11 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !10 ; 2 uses
  %i.g = fcmp ogt double %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit

bb.b:                                             ; preds = %bb.a
  store double %i.d, ptr %i.e, align 8, !tbaa !10
  br label %_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit

_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit: ; preds = %bb.a, %bb.b
  %i.h = phi double [ %i.f, %bb.a ], [ %i.d, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call noundef i32 @_ZN4geos9operation9overlayng13PrecisionUtil16numberOfDecimalsEd(double noundef %i.j)
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.l) #11 ; 2 uses
  %i.n = fcmp ogt double %i.m, %i.h
  br i1 %i.n, label %bb.c, label %_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit3

bb.c:                                             ; preds = %_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit
  store double %i.m, ptr %i.e, align 8, !tbaa !10
  br label %_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit3

_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit3: ; preds = %_ZN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilter14updateScaleMaxEd.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTSN4geos9operation9overlayng13PrecisionUtil19InherentScaleFilterE", !12, i64 0, !13, i64 8}
!12 = !{!"_ZTSN4geos4geom16CoordinateFilterE"}
!13 = !{!"double", !6, i64 0}
!14 = !{ptr @_ZN4geos9operation9overlayng13PrecisionUtil13inherentScaleEPKNS_4geom8GeometryES6_, ptr @_ZN4geos9operation9overlayng13PrecisionUtil13inherentScaleEPKNS_4geom8GeometryE}
!15 = !{ptr @_ZN4geos9operation9overlayng13PrecisionUtil9safeScaleEPKNS_4geom8GeometryES6_}
!16 = !{!13, !13, i64 0}
!17 = !{ptr @_ZN4geos9operation9overlayng13PrecisionUtil11robustScaleEPKNS_4geom8GeometryE, ptr @_ZN4geos9operation9overlayng13PrecisionUtil13inherentScaleEPKNS_4geom8GeometryE}
!18 = !{ptr @_ZN4geos9operation9overlayng13PrecisionUtil11robustScaleEPKNS_4geom8GeometryE, ptr @_ZN4geos9operation9overlayng13PrecisionUtil9safeScaleEPKNS_4geom8GeometryE}
!19 = !{ptr @_ZN4geos9operation9overlayng13PrecisionUtil13inherentScaleEPKNS_4geom8GeometryE}
!20 = !{ptr @_ZN4geos9operation9overlayng13PrecisionUtil9safeScaleEPKNS_4geom8GeometryE}
!21 = !{!22, !13, i64 0}
!22 = !{!"_ZTSN4geos4geom10CoordinateE", !13, i64 0, !13, i64 8, !13, i64 16}
!23 = !{!22, !13, i64 8}
end_hunk_0
