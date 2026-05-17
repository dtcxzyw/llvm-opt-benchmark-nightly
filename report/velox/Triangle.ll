inline.NumInlined: 15
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.geos::geom::Coordinate" = type { double, double, double }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos4geom8Triangle10isIsocelesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %1 = load double, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %2 = load double, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %3 = fsub double %1, %2                         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load double, ptr %4, align 8, !tbaa !10    ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %7 = load double, ptr %6, align 8, !tbaa !10    ; 2 uses
  %8 = fsub double %5, %7                         ; 2 uses
  %9 = fmul double %3, %3
  %10 = fmul double %8, %8
  %11 = fadd double %9, %10
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %11) ; 2 uses
  %12 = load double, ptr %0, align 8, !tbaa !7    ; 2 uses
  %13 = fsub double %12, %2                       ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load double, ptr %14, align 8, !tbaa !10  ; 2 uses
  %16 = fsub double %15, %7                       ; 2 uses
  %17 = fmul double %13, %13
  %18 = fmul double %16, %16
  %19 = fadd double %17, %18
  %sqrt.i12 = tail call noundef double @llvm.sqrt.f64(double %19) ; 2 uses
  %20 = fsub double %12, %1                       ; 2 uses
  %21 = fsub double %15, %5                       ; 2 uses
  %22 = fmul double %20, %20
  %23 = fmul double %21, %21
  %24 = fadd double %22, %23
  %sqrt.i13 = tail call noundef double @llvm.sqrt.f64(double %24) ; 2 uses
  %25 = fcmp oeq double %sqrt.i, %sqrt.i12
  %26 = fcmp oeq double %sqrt.i12, %sqrt.i13
  %or.cond = or i1 %25, %26
  %27 = fcmp oeq double %sqrt.i13, %sqrt.i
  %or.cond11 = or i1 %27, %or.cond
  ret i1 %or.cond11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Triangle8inCentreERNS0_10CoordinateE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 3 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !7 ; 3 uses
  %i.e = fsub double %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load double, ptr %i.h, align 8, !tbaa !10 ; 3 uses
  %i.j = fsub double %i.g, %i.i                   ; 2 uses
  %i.k = fmul double %i.e, %i.e
  %i.l = fmul double %i.j, %i.j
  %i.m = fadd double %i.k, %i.l
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.m) ; 3 uses
  %i.n = load double, ptr %0, align 8, !tbaa !7   ; 3 uses
  %i.o = fsub double %i.n, %i.d                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !10 ; 3 uses
  %i.r = fsub double %i.q, %i.i                   ; 2 uses
  %i.s = fmul double %i.o, %i.o
  %i.t = fmul double %i.r, %i.r
  %i.u = fadd double %i.s, %i.t
  %sqrt.i15 = tail call noundef double @llvm.sqrt.f64(double %i.u) ; 3 uses
  %i.v = fsub double %i.n, %i.c                   ; 2 uses
  %i.w = fsub double %i.q, %i.g                   ; 2 uses
  %i.x = fmul double %i.v, %i.v
  %i.y = fmul double %i.w, %i.w
  %i.z = fadd double %i.x, %i.y
  %sqrt.i16 = tail call noundef double @llvm.sqrt.f64(double %i.z) ; 3 uses
  %i.aa = fadd double %sqrt.i, %sqrt.i15
  %i.ab = fadd double %sqrt.i16, %i.aa            ; 2 uses
  %i.ac = fmul double %i.n, %sqrt.i
  %i.ad = fmul double %i.c, %sqrt.i15
  %i.ae = fadd double %i.ac, %i.ad
  %i.af = fmul double %i.d, %sqrt.i16
  %i.ag = fadd double %i.af, %i.ae
  %i.ah = fdiv double %i.ag, %i.ab
  %i.ai = fmul double %i.q, %sqrt.i
  %i.aj = fmul double %i.g, %sqrt.i15
  %i.ak = fadd double %i.ai, %i.aj
  %i.al = fmul double %i.i, %sqrt.i16
  %i.am = fadd double %i.al, %i.ak
  %i.an = fdiv double %i.am, %i.ab
  store double %i.ah, ptr %1, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Triangle12circumcentreERNS0_10CoordinateE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !11 ; 4 uses
  %i.d = load <2 x double>, ptr %0, align 8, !tbaa !11
  %i.e = fsub <2 x double> %i.d, %i.c             ; 5 uses
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !11
  %i.g = fsub <2 x double> %i.f, %i.c             ; 5 uses
  %i.h = extractelement <2 x double> %i.e, i64 0
  %i.i = extractelement <2 x double> %i.g, i64 1  ; 3 uses
  %i.j = fmul double %i.h, %i.i
  %i.k = extractelement <2 x double> %i.e, i64 1  ; 3 uses
  %i.l = extractelement <2 x double> %i.g, i64 0
  %i.m = fmul double %i.k, %i.l
  %i.n = fsub double %i.j, %i.m
  %i.o = fmul double %i.n, 2.000000e+00
  %foldExtExtBinop = fmul <2 x double> %i.e, %i.e
  %i.p = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.q = fmul double %i.k, %i.k
  %i.r = fadd double %i.p, %i.q
  %foldExtExtBinop39 = fmul <2 x double> %i.g, %i.g
  %i.s = extractelement <2 x double> %foldExtExtBinop39, i64 0
  %i.t = fmul double %i.i, %i.i
  %i.u = fadd double %i.s, %i.t
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.e, %i.w
  %i.y = insertelement <2 x double> poison, double %i.r, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.z, %i.g
  %i.ab = fsub <2 x double> %i.x, %i.aa
  %i.ac = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = fsub <2 x double> %i.c, %i.af
  %i.ah = fadd <2 x double> %i.c, %i.af
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> %i.ah, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ai, ptr %1, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZNK4geos4geom8Triangle3detEdddd(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fmul double %1, %4
  %i.b = fmul double %2, %3
  %i.c = fsub double %i.a, %i.b
  ret double %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8Triangle14circumcentreDDERNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN4geos9algorithm14CGAlgorithmsDD14circumcentreDDERKNS_4geom10CoordinateES5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare void @_ZN4geos9algorithm14CGAlgorithmsDD14circumcentreDDERKNS_4geom10CoordinateES5_S5_(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Triangle12circumcentreERKNS0_10CoordinateES4_S4_(ptr dead_on_unwind noalias writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !11
  %i.c = load <2 x double>, ptr %2, align 8, !tbaa !11
  %i.d = load <2 x double>, ptr %3, align 8, !tbaa !11 ; 4 uses
  %i.e = fsub <2 x double> %i.b, %i.d             ; 5 uses
  %i.f = fsub <2 x double> %i.c, %i.d             ; 5 uses
  %i.g = extractelement <2 x double> %i.e, i64 0
  %i.h = extractelement <2 x double> %i.f, i64 1  ; 3 uses
  %i.i = fmul double %i.g, %i.h
  %i.j = extractelement <2 x double> %i.e, i64 1  ; 3 uses
  %i.k = extractelement <2 x double> %i.f, i64 0
  %i.l = fmul double %i.k, %i.j
  %i.m = fsub double %i.i, %i.l
  %i.n = fmul double %i.m, 2.000000e+00
  %foldExtExtBinop = fmul <2 x double> %i.e, %i.e
  %i.o = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.p = fmul double %i.j, %i.j
  %i.q = fadd double %i.o, %i.p
  %foldExtExtBinop6 = fmul <2 x double> %i.f, %i.f
  %i.r = extractelement <2 x double> %foldExtExtBinop6, i64 0
  %i.s = fmul double %i.h, %i.h
  %i.t = fadd double %i.r, %i.s
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.e, %i.v
  %i.x = insertelement <2 x double> poison, double %i.q, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.f, %i.y
  %i.aa = fsub <2 x double> %i.w, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ac = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x double> %i.ac, %i.ad          ; 2 uses
  %i.af = fsub <2 x double> %i.d, %i.ae
  %i.ag = fadd <2 x double> %i.d, %i.ae
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ag, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ah, ptr %0, align 8, !tbaa !11
  store double +qnan, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom8Triangle7isAcuteERKNS0_10CoordinateES4_S4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4geos9algorithm5Angle7isAcuteERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4geos9algorithm5Angle7isAcuteERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN4geos9algorithm5Angle7isAcuteERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4geos9algorithm5Angle7isAcuteERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom8Triangle5isCCWERKNS0_10CoordinateES4_S4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = icmp eq i32 %i.a, 1
  ret i1 %i.b
}

declare noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom8Triangle10intersectsERKNS0_10CoordinateES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = icmp eq i32 %i.a, 1
  %i.c = select i1 %i.b, i32 -1, i32 1            ; 3 uses
  %i.d = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.g = icmp eq i32 %i.c, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.i = icmp ne i32 %i.c, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 8}
!11 = !{!9, !9, i64 0}
!12 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11}
end_hunk_0
