Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/InteriorPointLine?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@_ZTIN4geos4geom8GeometryE = external constant ptr
@_ZTIN4geos4geom10LineStringE = external constant ptr
@_ZTIN4geos4geom18GeometryCollectionE = external constant ptr

@_ZN4geos9algorithm17InteriorPointLineC1EPKNS_4geom8GeometryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9algorithm17InteriorPointLineC2EPKNS_4geom8GeometryE

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm17InteriorPointLineC2EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 1), (8, 64)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.d, align 8, !tbaa !22
  store <2 x double> <double +qnan, double +inf>, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %0, align 8, !tbaa !14
  %i.e = load ptr, ptr %1, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #7 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  br i1 %i.f, label %_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !24
  %i.l = add i64 %i.k, -1                         ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph.i, label %_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.e

bb.e:                                             ; preds = %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i, %.lr.ph.i
  %.06.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ae, %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i ] ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %.06.i), !inline_history !24 ; 2 uses
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !11
  %i.v = load <2 x double>, ptr %i.n, align 8, !tbaa !11
  %i.w = fsub <2 x double> %i.u, %i.v             ; 2 uses
  %i.x = fmul <2 x double> %i.w, %i.w             ; 2 uses
  %shift = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.x, %shift
  %i.y = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.z = tail call noundef double @llvm.sqrt.f64(double %i.y) ; 2 uses
  %i.aa = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = load double, ptr %i.o, align 8
  %i.ad = fcmp uge double %i.z, %i.ac
  %or.cond.not.i.i = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond.not.i.i, label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !19
  store double %i.z, ptr %i.o, align 8, !tbaa !20
  store i8 1, ptr %0, align 8, !tbaa !14
  br label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i

_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i: ; preds = %bb.f, %bb.e
  %i.ae = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.l
  br i1 %exitcond.not.i, label %_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.b
  %i.af = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #7 ; 5 uses
  %.not15 = icmp eq ptr %i.af, null
  br i1 %.not15, label %_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.af) ; 2 uses
  %.not22 = icmp eq i64 %i.aj, 0
  br i1 %.not22, label %_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.021 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %bb.h ] ; 2 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 noundef %.021)
  tail call void @_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.an)
  %i.ao = add nuw i64 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.aj
  br i1 %exitcond.not, label %_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit, label %.lr.ph, !llvm.loop !23

_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE.exit: ; preds = %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i, %.lr.ph, %bb.h, %bb.a, %bb.d, %bb.g, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #7 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !25 ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0), !inline_history !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !11
  %i.n = load <2 x double>, ptr %i.l, align 8, !tbaa !11
  %i.o = fsub <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %shift = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.p, %shift
  %i.q = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.r = tail call noundef double @llvm.sqrt.f64(double %i.q) ; 2 uses
  %i.s = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = load double, ptr %i.u, align 8
  %i.w = fcmp uge double %i.r, %i.v
  %or.cond.not.i.i = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond.not.i.i, label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !19
  store double %i.r, ptr %i.u, align 8, !tbaa !20
  store i8 1, ptr %0, align 8, !tbaa !14
  br label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i

_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i: ; preds = %bb.e, %bb.d
  %.not6.i = icmp eq i64 %i.g, 1
  br i1 %.not6.i, label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i
  %i.y = add i64 %i.g, -1
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.y), !inline_history !27 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.ac, align 8, !tbaa !11
  %i.ae = load <2 x double>, ptr %i.l, align 8, !tbaa !11
  %i.af = fsub <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = fmul <2 x double> %i.af, %i.af          ; 2 uses
  %shift26 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop27 = fadd <2 x double> %i.ag, %shift26
  %i.ah = extractelement <2 x double> %foldExtExtBinop27, i64 0
  %i.ai = tail call noundef double @llvm.sqrt.f64(double %i.ah) ; 2 uses
  %i.aj = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load double, ptr %i.u, align 8
  %i.am = fcmp uge double %i.ai, %i.al
  %or.cond.not.i7.i = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.not.i7.i, label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !19
  store double %i.ai, ptr %i.u, align 8, !tbaa !20
  store i8 1, ptr %0, align 8, !tbaa !14
  br label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit

bb.h:                                             ; preds = %bb.b
  %i.ao = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #7 ; 5 uses
  %.not14 = icmp eq ptr %i.ao, null
  br i1 %.not14, label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(64) %i.ao) ; 2 uses
  %.not20 = icmp eq i64 %i.as, 0
  br i1 %.not20, label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.019 = phi i64 [ %i.ax, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef %.019)
  tail call void @_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aw)
  %i.ax = add nuw i64 %.019, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.as
  br i1 %exitcond.not, label %_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit, label %.lr.ph, !llvm.loop !26

_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE.exit: ; preds = %.lr.ph, %bb.i, %bb.a, %bb.g, %bb.f, %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit.i, %bb.c, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit
  %.06 = phi i64 [ 1, %.lr.ph ], [ %i.x, %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.06) ; 2 uses
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !11
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !11
  %i.p = fsub <2 x double> %i.n, %i.o             ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.p             ; 2 uses
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.q, %shift
  %i.r = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.s = tail call noundef double @llvm.sqrt.f64(double %i.r) ; 2 uses
  %i.t = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load double, ptr %i.h, align 8
  %i.w = fcmp uge double %i.s, %i.v
  %or.cond.not.i = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond.not.i, label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !19
  store double %i.s, ptr %i.h, align 8, !tbaa !20
  store i8 1, ptr %0, align 8, !tbaa !14
  br label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit

_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit: ; preds = %bb.b, %bb.c
  %i.x = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0
}

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !11
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !11
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = fmul <2 x double> %i.d, %i.d             ; 2 uses
  %shift = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.e, %shift
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.g = tail call noundef double @llvm.sqrt.f64(double %i.f) ; 2 uses
  %i.h = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp uge double %i.g, %i.k
  %or.cond.not = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !19
  store double %i.g, ptr %i.j, align 8, !tbaa !20
  store i8 1, ptr %0, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !28 ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x double>, ptr %i.h, align 8, !tbaa !11
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !11
  %i.l = fsub <2 x double> %i.j, %i.k             ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l             ; 2 uses
  %shift = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.m, %shift
  %i.n = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.o = tail call noundef double @llvm.sqrt.f64(double %i.n) ; 2 uses
  %i.p = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp uge double %i.o, %i.s
  %or.cond.not.i = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond.not.i, label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !19
  store double %i.o, ptr %i.r, align 8, !tbaa !20
  store i8 1, ptr %0, align 8, !tbaa !14
  br label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit

_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit: ; preds = %bb.b, %bb.c
  %.not6 = icmp eq i64 %i.d, 1
  br i1 %.not6, label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit8, label %bb.d

bb.d:                                             ; preds = %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit
  %i.v = add i64 %i.d, -1
  %i.w = load ptr, ptr %1, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.v) ; 2 uses
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !11
  %i.ab = load <2 x double>, ptr %i.i, align 8, !tbaa !11
  %i.ac = fsub <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = fmul <2 x double> %i.ac, %i.ac          ; 2 uses
  %shift10 = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11 = fadd <2 x double> %i.ad, %shift10
  %i.ae = extractelement <2 x double> %foldExtExtBinop11, i64 0
  %i.af = tail call noundef double @llvm.sqrt.f64(double %i.ae) ; 2 uses
  %i.ag = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load double, ptr %i.r, align 8
  %i.aj = fcmp uge double %i.af, %i.ai
  %or.cond.not.i7 = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.not.i7, label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !19
  store double %i.af, ptr %i.r, align 8, !tbaa !20
  store i8 1, ptr %0, align 8, !tbaa !14
  br label %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit8

_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit8: ; preds = %bb.e, %bb.d, %_ZN4geos9algorithm17InteriorPointLine3addERKNS_4geom10CoordinateE.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos9algorithm17InteriorPointLine16getInteriorPointERNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14, !range !17, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !21}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!9, !9, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTSN4geos9algorithm17InteriorPointLineE", !12, i64 0, !10, i64 8, !9, i64 32, !10, i64 40}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11}
!20 = !{!13, !9, i64 32}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!10, !9, i64 16}
!23 = distinct !{!23, !21}
!24 = !{ptr @_ZN4geos9algorithm17InteriorPointLine11addInteriorEPKNS_4geom18CoordinateSequenceE}
!25 = distinct !{ptr @_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE, null}
!26 = distinct !{!26, !21}
!27 = !{ptr @_ZN4geos9algorithm17InteriorPointLine12addEndpointsEPKNS_4geom18CoordinateSequenceE}
!28 = distinct !{null}
end_hunk_0
