inline.NumInlined: 15
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.geos::geom::Coordinate" = type { double, double, double }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos4geom8Triangle10isIsocelesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !8 ; 4 uses
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  %i.g = load double, ptr %i.c, align 8, !tbaa !10
  %i.h = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 3 uses
  %i.i = load double, ptr %i.d, align 8, !tbaa !10
  %foldExtExtBinop = fsub <2 x double> %i.h, %i.f ; 2 uses
  %i.j = fsub double %i.i, %i.g                   ; 2 uses
  %foldExtExtBinop15 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.k = extractelement <2 x double> %foldExtExtBinop15, i64 0
  %i.l = fmul double %i.j, %i.j
  %i.m = fadd double %i.k, %i.l
  %sqrt.i12 = tail call noundef double @llvm.sqrt.f64(double %i.m)
  %i.n = shufflevector <2 x double> %i.e, <2 x double> %i.h, <2 x i32> <i32 0, i32 2>
  %i.o = shufflevector <2 x double> %i.f, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.p = fsub <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = shufflevector <2 x double> %i.e, <2 x double> %i.h, <2 x i32> <i32 1, i32 3>
  %i.r = shufflevector <2 x double> %i.f, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = fmul <2 x double> %i.p, %i.p
  %i.u = fmul <2 x double> %i.s, %i.s
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.v) ; 3 uses
  %i.x = insertelement <2 x double> poison, double %sqrt.i12, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fcmp oeq <2 x double> %i.y, %i.w         ; 2 uses
  %shift = shufflevector <2 x i1> %i.z, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %shift19 = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = fcmp oeq <2 x double> %shift19, %i.w
  %i.ab = or <2 x i1> %shift, %i.aa
  %foldExtExtBinop20 = or <2 x i1> %i.ab, %i.z
  %or.cond11 = extractelement <2 x i1> %foldExtExtBinop20, i64 0
  ret i1 %or.cond11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Triangle8inCentreERNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !8 ; 4 uses
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 4 uses
  %i.f = shufflevector <2 x double> %i.c, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.g = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fsub <2 x double> %i.f, %i.g             ; 2 uses
  %i.i = shufflevector <2 x double> %i.c, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.j = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.k = fsub <2 x double> %i.i, %i.j             ; 2 uses
  %i.l = fmul <2 x double> %i.h, %i.h
  %i.m = fmul <2 x double> %i.k, %i.k
  %i.n = fadd <2 x double> %i.l, %i.m
  %i.o = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.n) ; 4 uses
  %i.p = fsub <2 x double> %i.e, %i.c             ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.p             ; 2 uses
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.r = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i16 = tail call noundef double @llvm.sqrt.f64(double %i.r) ; 2 uses
  %shift18 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop19 = fadd <2 x double> %i.o, %shift18
  %i.s = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.t = fadd double %sqrt.i16, %i.s
  %i.u = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.e, %i.u
  %i.w = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x double> %i.c, %i.w
  %i.y = fadd <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %sqrt.i16, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.d, %i.aa
  %i.ac = fadd <2 x double> %i.ab, %i.y
  %i.ad = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x double> %i.ac, %i.ae
  store <2 x double> %i.af, ptr %1, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Triangle12circumcentreERNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !8 ; 4 uses
  %i.d = load <2 x double>, ptr %0, align 8, !tbaa !8
  %i.e = fsub <2 x double> %i.d, %i.c             ; 5 uses
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !8
  %i.g = fsub <2 x double> %i.f, %i.c             ; 5 uses
  %shift = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.e, %shift
  %shift39 = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop40 = fmul <2 x double> %shift39, %i.g
  %foldExtExtBinop42 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop40
  %i.h = extractelement <2 x double> %foldExtExtBinop42, i64 0
  %i.i = fmul double %i.h, 2.000000e+00
  %2 = shufflevector <2 x double> %i.e, <2 x double> %i.g, <2 x i32> <i32 0, i32 2> ; 2 uses
  %foldExtExtBinop39 = fmul <2 x double> %2, %2
  %3 = shufflevector <2 x double> %i.e, <2 x double> %i.g, <2 x i32> <i32 1, i32 3> ; 2 uses
  %4 = fmul <2 x double> %3, %3
  %5 = fadd <2 x double> %foldExtExtBinop39, %4   ; 2 uses
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fmul <2 x double> %i.e, %6
  %i.k = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.g
  %i.m = fsub <2 x double> %i.j, %i.l
  %i.n = insertelement <2 x double> poison, double %i.i, i64 0
  %i.o = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.p = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = fsub <2 x double> %i.c, %i.q
  %i.s = fadd <2 x double> %i.c, %i.q
  %i.t = shufflevector <2 x double> %i.r, <2 x double> %i.s, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.t, ptr %1, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double +qnan, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZNK4geos4geom8Triangle3detEdddd(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fmul double %1, %4
  %i.b = fmul double %2, %3
  %i.c = fsub double %i.a, %i.b
  ret double %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8Triangle14circumcentreDDERNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #4 align 2 {
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
define void @_ZN4geos4geom8Triangle12circumcentreERKNS0_10CoordinateES4_S4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !8
  %i.c = load <2 x double>, ptr %2, align 8, !tbaa !8
  %i.d = load <2 x double>, ptr %3, align 8, !tbaa !8 ; 4 uses
  %i.e = fsub <2 x double> %i.b, %i.d             ; 5 uses
  %i.f = fsub <2 x double> %i.c, %i.d             ; 5 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.e, %shift
  %shift6 = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop7 = fmul <2 x double> %i.f, %shift6
  %foldExtExtBinop9 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop7
  %i.g = extractelement <2 x double> %foldExtExtBinop9, i64 0
  %i.h = fmul double %i.g, 2.000000e+00
  %4 = shufflevector <2 x double> %i.e, <2 x double> %i.f, <2 x i32> <i32 0, i32 2> ; 2 uses
  %foldExtExtBinop6 = fmul <2 x double> %4, %4
  %5 = shufflevector <2 x double> %i.e, <2 x double> %i.f, <2 x i32> <i32 1, i32 3> ; 2 uses
  %6 = fmul <2 x double> %5, %5
  %7 = fadd <2 x double> %foldExtExtBinop6, %6    ; 2 uses
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x double> %i.e, %8
  %i.j = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x double> %i.f, %i.j
  %i.l = fsub <2 x double> %i.i, %i.k
  %i.m = insertelement <2 x double> poison, double %i.h, i64 0
  %i.n = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.o = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = fsub <2 x double> %i.d, %i.p
  %i.r = fadd <2 x double> %i.d, %i.p
  %i.s = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.s, ptr %0, align 8, !tbaa !8
  store double +qnan, ptr %i.a, align 8, !tbaa !8
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #6

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
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!12 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 8, !8}
end_hunk_0
