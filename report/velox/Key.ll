inline.NumInlined: 21
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

@_ZN4geos5index8quadtree3KeyC1ERKNS_4geom8EnvelopeE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos5index8quadtree3KeyC2ERKNS_4geom8EnvelopeE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4geos5index8quadtree3Key16computeQuadLevelERKNS_4geom8EnvelopeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00       ; 2 uses
  %i.e = load double, ptr %0, align 8
  %i.f = fsub double %i.c, %i.e
  %.0.i = select i1 %i.d, double 0.000000e+00, double %i.f ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load double, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8
  %i.k = fsub double %i.h, %i.j
  %.0.i7 = select i1 %i.d, double 0.000000e+00, double %i.k ; 2 uses
  %i.l = fcmp ogt double %.0.i, %.0.i7
  %i.m = select i1 %i.l, double %.0.i, double %.0.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.n = call double @frexp(double noundef %i.m, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index8quadtree3KeyC2ERKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 28), (32, 64)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x double> splat (double +qnan), ptr %i.c, align 8, !tbaa !14
  tail call void @_ZN4geos5index8quadtree3Key10computeKeyERKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index8quadtree3Key10computeKeyERKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 16), (24, 28), (32, 64)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00       ; 2 uses
  %i.e = load double, ptr %1, align 8
  %i.f = fsub double %i.c, %i.e
  %.0.i.i = select i1 %i.d, double 0.000000e+00, double %i.f ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load double, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load double, ptr %i.i, align 8
  %i.k = fsub double %i.h, %i.j
  %.0.i7.i = select i1 %i.d, double 0.000000e+00, double %i.k ; 2 uses
  %i.l = fcmp ogt double %.0.i.i, %.0.i7.i
  %i.m = select i1 %i.l, double %.0.i.i, double %.0.i7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.n = call double @frexp(double noundef %i.m, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %i.o, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double +qnan, ptr %i.r, align 8, !tbaa !15
  store double +qnan, ptr %i.q, align 8, !tbaa !16
  %ldexp.i = tail call double @ldexp(double 1.000000e+00, i32 %i.o)
  %i.s = load <2 x double>, ptr %1, align 8
  %i.t = load double, ptr %i.i, align 8, !tbaa !15
  %i.u = insertelement <2 x double> %i.s, double %i.t, i64 1
  %i.v = insertelement <2 x double> poison, double %ldexp.i, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.x = fdiv <2 x double> %i.u, %i.w
  %i.y = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.x)
  %i.z = fmul <2 x double> %i.w, %i.y             ; 5 uses
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !14
  %i.aa = fadd <2 x double> %i.w, %i.z            ; 3 uses
  %i.ab = fcmp olt <2 x double> %i.z, %i.aa
  %i.ac = shufflevector <2 x i1> %i.ab, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ad = shufflevector <2 x double> %i.z, <2 x double> %i.aa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ae = shufflevector <2 x double> %i.aa, <2 x double> %i.z, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.af = select <4 x i1> %i.ac, <4 x double> %i.ad, <4 x double> %i.ae
  store <4 x double> %i.af, ptr %i.q, align 8, !tbaa !14
  %i.ag = tail call noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !12
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.ai, ptr %i.p, align 8, !tbaa !12
  %ldexp.i5 = tail call double @ldexp(double 1.000000e+00, i32 %i.ai)
  %2 = load double, ptr %1, align 8, !tbaa !16
  %i.aj = load double, ptr %i.i, align 8, !tbaa !15
  %3 = insertelement <2 x double> poison, double %2, i64 0
  %i.ak = insertelement <2 x double> %3, double %i.aj, i64 1
  %i.al = insertelement <2 x double> poison, double %ldexp.i5, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.an = fdiv <2 x double> %i.ak, %i.am
  %i.ao = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.an)
  %i.ap = fmul <2 x double> %i.am, %i.ao          ; 5 uses
  store <2 x double> %i.ap, ptr %0, align 8, !tbaa !14
  %i.aq = fadd <2 x double> %i.am, %i.ap          ; 3 uses
  %i.ar = fcmp olt <2 x double> %i.ap, %i.aq
  %i.as = shufflevector <2 x i1> %i.ar, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> %i.ap, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.av = select <4 x i1> %i.as, <4 x double> %i.at, <4 x double> %i.au
  store <4 x double> %i.av, ptr %i.q, align 8, !tbaa !14
  %i.aw = tail call noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.aw, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos5index8quadtree3Key8getPointEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK4geos5index8quadtree3Key8getLevelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4geos5index8quadtree3Key11getEnvelopeEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZNK4geos5index8quadtree3Key9getCentreEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %1 = load double, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load double, ptr %2, align 8, !tbaa !19
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = insertelement <2 x double> %4, double %3, i64 1
  %i.e = fadd <2 x double> %i.d, %5
  %i.f = fmul <2 x double> %i.e, splat (double 5.000000e-01)
  store <2 x double> %i.f, ptr %i.a, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double +qnan, ptr %i.g, align 8, !tbaa !10
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN4geos5index8quadtree3Key10computeKeyEiRKNS_4geom8EnvelopeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 16), (32, 64)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %1)
  %i.a = load <2 x double>, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = insertelement <2 x double> %i.a, double %i.c, i64 1
  %i.f = insertelement <2 x double> poison, double %ldexp, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.h = fdiv <2 x double> %i.e, %i.g
  %i.i = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.h)
  %i.j = fmul <2 x double> %i.g, %i.i             ; 5 uses
  store <2 x double> %i.j, ptr %0, align 8, !tbaa !14
  %i.k = fadd <2 x double> %i.g, %i.j             ; 3 uses
  %i.l = fcmp olt <2 x double> %i.j, %i.k
  %i.m = shufflevector <2 x i1> %i.l, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.n = shufflevector <2 x double> %i.j, <2 x double> %i.k, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.o = shufflevector <2 x double> %i.k, <2 x double> %i.j, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.p = select <4 x i1> %i.m, <4 x double> %i.n, <4 x double> %i.o
  store <4 x double> %i.p, ptr %i.d, align 8, !tbaa !14
  ret void
}

declare noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversERKS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN4geos4geom8EnvelopeE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"double", !5, i64 0}
!10 = !{!11, !9, i64 16}
!11 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!12 = !{!13, !4, i64 24}
!13 = !{!"_ZTSN4geos5index8quadtree3KeyE", !11, i64 0, !4, i64 24, !8, i64 32}
!14 = !{!9, !9, i64 0}
!15 = !{!8, !9, i64 16}
!16 = !{!8, !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!8, !9, i64 24}
end_hunk_0
