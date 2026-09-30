Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/RayCrossingCounterDD?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 3) i8 @_ZN4geos9algorithm20RayCrossingCounterDD17locatePointInRingERKNS_4geom10CoordinateERKNS2_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !20 ; 2 uses
  %.not35 = icmp ugt i64 %i.d, 1
  br i1 %.not35, label %.lr.ph, label %.thread30

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.01437 = phi i64 [ 1, %.lr.ph ], [ %i.aq, %bb.h ] ; 3 uses
  %.sroa.4.036 = phi i32 [ 0, %.lr.ph ], [ %.sroa.4.2.ph, %bb.h ] ; 4 uses
  %i.f = add i64 %.01437, -1
  %i.g = load ptr, ptr %1, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.f), !inline_history !21 ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.01437), !inline_history !21 ; 3 uses
  %i.o = load double, ptr %i.j, align 8, !tbaa !10 ; 4 uses
  %i.p = load double, ptr %0, align 8, !tbaa !10  ; 5 uses
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = load double, ptr %i.n, align 8           ; 5 uses
  %i.s = fcmp olt double %i.r, %i.p
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = fcmp oeq double %i.p, %i.r
  %i.u = load double, ptr %i.e, align 8, !tbaa !11 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load double, ptr %i.v, align 8           ; 3 uses
  %i.x = fcmp oeq double %i.u, %i.w               ; 2 uses
  %or.cond47.i = select i1 %i.t, i1 %i.x, i1 false
  br i1 %or.cond47.i, label %.thread30, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !11 ; 3 uses
  %i.aa = fcmp oeq double %i.z, %i.u
  %or.cond50.i = select i1 %i.aa, i1 %i.x, i1 false
  br i1 %or.cond50.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ab = fcmp ogt double %i.o, %i.r              ; 2 uses
  %.026.i = select i1 %i.ab, double %i.r, double %i.o
  %.025.i = select i1 %i.ab, double %i.o, double %i.r
  %i.ac = fcmp ult double %i.p, %.026.i
  %i.ad = fcmp ugt double %i.p, %.025.i
  %or.cond37.i = or i1 %i.ac, %i.ad
  br i1 %or.cond37.i, label %bb.h, label %.thread30

bb.e:                                             ; preds = %._crit_edge.i
  %i.ae = fcmp ule double %i.z, %i.u
  %i.af = fcmp ugt double %i.w, %i.u
  %or.cond51.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond51.i, label %._crit_edge39.i, label %bb.f

._crit_edge39.i:                                  ; preds = %bb.e
  %i.ag = fcmp ule double %i.w, %i.u
  %i.ah = fcmp ugt double %i.z, %i.u
  %or.cond38.i = or i1 %i.ag, %i.ah
  br i1 %or.cond38.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge39.i, %bb.e
  %i.ai = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load double, ptr %i.v, align 8, !tbaa !11
  %i.al = load double, ptr %i.y, align 8, !tbaa !11
  %i.am = fcmp olt double %i.ak, %i.al
  %i.an = sub nsw i32 0, %i.ai
  %spec.select.i = select i1 %i.am, i32 %i.an, i32 %i.ai
  %i.ao = icmp eq i32 %spec.select.i, 1
  %i.ap = zext i1 %i.ao to i32
  %spec.select = add nsw i32 %.sroa.4.036, %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge39.i, %bb.d, %bb.b
  %.sroa.4.2.ph = phi i32 [ %.sroa.4.036, %bb.b ], [ %.sroa.4.036, %._crit_edge39.i ], [ %.sroa.4.036, %bb.d ], [ %spec.select, %bb.g ] ; 2 uses
  %i.aq = add nuw i64 %.01437, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.ar = and i32 %.sroa.4.2.ph, -2147483647
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = select i1 %i.as, i8 0, i8 2
  br label %.thread30

.thread30:                                        ; preds = %bb.f, %bb.c, %bb.d, %bb.a, %._crit_edge.loopexit
  %.3 = phi i8 [ %i.at, %._crit_edge.loopexit ], [ 2, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.f ]
  ret i8 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm20RayCrossingCounterDD12countSegmentERKNS_4geom10CoordinateES5_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10  ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !25, !nonnull !17, !align !26 ; 3 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 5 uses
  %i.d = fcmp olt double %i.a, %i.c
  %i.e = load double, ptr %2, align 8             ; 5 uses
  %i.f = fcmp olt double %i.e, %i.c
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.c, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !11 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 4 uses
  %i.l = fcmp oeq double %i.i, %i.k
  %or.cond47 = select i1 %i.g, i1 %i.l, i1 false
  br i1 %or.cond47, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.m, align 4, !tbaa !18
  br label %bb.k

._crit_edge:                                      ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !11 ; 3 uses
  %i.p = fcmp oeq double %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = fcmp oeq double %i.k, %i.i
  %or.cond50 = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond50, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.s = fcmp ogt double %i.a, %i.e               ; 2 uses
  %.026 = select i1 %i.s, double %i.e, double %i.a
  %.025 = select i1 %i.s, double %i.a, double %i.e
  %i.t = fcmp ult double %i.c, %.026
  %i.u = fcmp ugt double %i.c, %.025
  %or.cond37 = or i1 %i.t, %i.u
  br i1 %or.cond37, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.v, align 4, !tbaa !18
  br label %bb.k

bb.f:                                             ; preds = %._crit_edge
  %i.w = fcmp ule double %i.o, %i.i
  %i.x = fcmp ugt double %i.k, %i.i
  %or.cond51 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond51, label %._crit_edge39, label %bb.g

._crit_edge39:                                    ; preds = %bb.f
  %i.y = fcmp ule double %i.k, %i.i
  %i.z = fcmp ugt double %i.o, %i.i
  %or.cond38 = or i1 %i.z, %i.y
  br i1 %or.cond38, label %bb.k, label %bb.g

bb.g:                                             ; preds = %._crit_edge39, %bb.f
  %i.aa = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 3 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.ac, align 4, !tbaa !18
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = load double, ptr %i.q, align 8, !tbaa !11
  %i.ae = load double, ptr %i.n, align 8, !tbaa !11
  %i.af = fcmp olt double %i.ad, %i.ae
  %i.ag = sub nsw i32 0, %i.aa
  %spec.select = select i1 %i.af, i32 %i.ag, i32 %i.aa
  %i.ah = icmp eq i32 %spec.select, 1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.d, %bb.e, %bb.a, %._crit_edge39, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 3) i8 @_ZN4geos9algorithm20RayCrossingCounterDD11getLocationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(13) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !18, !range !19, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, -2147483647
  %i.g = icmp eq i32 %i.f, 1
  %. = select i1 %i.g, i8 0, i8 2
  %.0 = select i1 %i.c, i8 1, i8 %.
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 3) i8 @_ZN4geos9algorithm20RayCrossingCounterDD17locatePointInRingERKNS_4geom10CoordinateERKSt6vectorIPS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = load ptr, ptr %1, align 8, !tbaa !33
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %.not35 = icmp ugt i64 %i.g, 1
  br i1 %.not35, label %.lr.ph, label %.thread30

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.01437 = phi i64 [ 1, %.lr.ph ], [ %i.ap, %bb.h ] ; 2 uses
  %.sroa.4.036 = phi i32 [ 0, %.lr.ph ], [ %.sroa.4.2.ph, %bb.h ] ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !33
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.01437 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !34   ; 3 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !10 ; 4 uses
  %i.o = load double, ptr %0, align 8, !tbaa !10  ; 5 uses
  %i.p = fcmp olt double %i.n, %i.o
  %i.q = load double, ptr %i.m, align 8           ; 5 uses
  %i.r = fcmp olt double %i.q, %i.o
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fcmp oeq double %i.o, %i.q
  %i.t = load double, ptr %i.h, align 8, !tbaa !11 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.v = load double, ptr %i.u, align 8           ; 3 uses
  %i.w = fcmp oeq double %i.t, %i.v               ; 2 uses
  %or.cond47.i = select i1 %i.s, i1 %i.w, i1 false
  br i1 %or.cond47.i, label %.thread30, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !11 ; 3 uses
  %i.z = fcmp oeq double %i.y, %i.t
  %or.cond50.i = select i1 %i.z, i1 %i.w, i1 false
  br i1 %or.cond50.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aa = fcmp ogt double %i.n, %i.q              ; 2 uses
  %.026.i = select i1 %i.aa, double %i.q, double %i.n
  %.025.i = select i1 %i.aa, double %i.n, double %i.q
  %i.ab = fcmp ult double %i.o, %.026.i
  %i.ac = fcmp ugt double %i.o, %.025.i
  %or.cond37.i = or i1 %i.ab, %i.ac
  br i1 %or.cond37.i, label %bb.h, label %.thread30

bb.e:                                             ; preds = %._crit_edge.i
  %i.ad = fcmp ule double %i.y, %i.t
  %i.ae = fcmp ugt double %i.v, %i.t
  %or.cond51.i = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond51.i, label %._crit_edge39.i, label %bb.f

._crit_edge39.i:                                  ; preds = %bb.e
  %i.af = fcmp ule double %i.v, %i.t
  %i.ag = fcmp ugt double %i.y, %i.t
  %or.cond38.i = or i1 %i.af, %i.ag
  br i1 %or.cond38.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge39.i, %bb.e
  %i.ah = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.thread30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load double, ptr %i.u, align 8, !tbaa !11
  %i.ak = load double, ptr %i.x, align 8, !tbaa !11
  %i.al = fcmp olt double %i.aj, %i.ak
  %i.am = sub nsw i32 0, %i.ah
  %spec.select.i = select i1 %i.al, i32 %i.am, i32 %i.ah
  %i.an = icmp eq i32 %spec.select.i, 1
  %i.ao = zext i1 %i.an to i32
  %spec.select = add nsw i32 %.sroa.4.036, %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge39.i, %bb.d, %bb.b
  %.sroa.4.2.ph = phi i32 [ %.sroa.4.036, %bb.b ], [ %.sroa.4.036, %._crit_edge39.i ], [ %.sroa.4.036, %bb.d ], [ %spec.select, %bb.g ] ; 2 uses
  %i.ap = add nuw i64 %.01437, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.g
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.aq = and i32 %.sroa.4.2.ph, -2147483647
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = select i1 %i.ar, i8 0, i8 2
  br label %.thread30

.thread30:                                        ; preds = %bb.f, %bb.c, %bb.d, %bb.a, %._crit_edge.loopexit
  %.3 = phi i8 [ %i.as, %._crit_edge.loopexit ], [ 2, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.f ]
  ret i8 %.3
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4geos9algorithm20RayCrossingCounterDD16orientationIndexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret i32 %i.a
}

declare noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos9algorithm20RayCrossingCounterDD16isPointInPolygonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(13) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !18, !range !19, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, -2147483647
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.c, i1 true, i1 %i.g
  ret i1 %i.h
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"_ZTSN4geos4geom10CoordinateE", !8, i64 0, !8, i64 8, !8, i64 16}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !13, i64 0}
!15 = !{!"bool", !4, i64 0}
!16 = !{!"_ZTSN4geos9algorithm20RayCrossingCounterDDE", !14, i64 0, !5, i64 8, !15, i64 12}
!17 = !{}
!18 = !{!16, !15, i64 12}
!19 = !{i8 0, i8 2}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{!22, !12}
!23 = !{!"vtable pointer", !3, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!16, !14, i64 0}
!26 = !{i64 8}
!27 = !{!16, !5, i64 8}
!28 = distinct !{!28, !12}
!29 = !{!"any p2 pointer", !13, i64 0}
!30 = !{!"p2 _ZTSN4geos4geom10CoordinateE", !29, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 8}
end_hunk_0
